<?php

namespace App\Http\Controllers;

use App\Custom_User;
use Illuminate\Http\Request;
use App\Exports\ServicioExport;
use App\Mail\ReporteGeneral;
use App\Servicio;
use App\User;
use Carbon\Carbon;
use Maatwebsite\Excel\Facades\Excel;
use Dompdf\Dompdf;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

class ServiciosController extends Controller
{
    private $params;

    public function __construct()
    {
        $this->mServicio = new Servicio;
        $this->mUser = new Custom_User;
        $this->params = [
            'campo_id' => null,
            'columna_id' => null,
            'fecha_inicio' => null,
            'fecha_fin' => null
        ];
    }

    public function exportar(Request $request)
    {
        $file = null;

        if ($request->field_rgb != null) {

        } else {
            if ($request->tipo_archivo == 'excel') {
                $file = $this->getExcel($request);
            } elseif ($request->tipo_archivo == 'pdf') {
                $file = $this->getPdf($request);
            }
        }

        return $file;
    }

    private function getExcel(Request $request)
    {
        return Excel::download(new ServicioExport($request), 'servicios.xlsx');
    }

    private function getPdf(Request $request)
    {
        $pathimg = public_path('/img/logo.png');
        // $pathimg = 'http://servicioschedraui.tobecorporativo.mx/admin/img/appicon.png';
        $servicios = $this->mServicio->porFechasObject($request);
        // return view('exportar._serviciosPdf', compact('servicios', 'pathimg'));
        $dompdf = new Dompdf();
        $dompdf->set_option("enable_php", true);
        $dompdf->loadHtml(view('exportar._serviciosPdf', compact('servicios', 'pathimg')));

        // (Optional) Setup the paper size and orientation
        $dompdf->setPaper('A4', 'landscape');

        // Render the HTML as PDF
        $dompdf->render();

        // Output the generated PDF to Browser
        return $dompdf->stream('Reporte.pdf');
    }

    public function sendEmail()
    {
        $user = $this->mUser->with(['persona'])->first();
        Mail::to('abel.castro9111@gmail.com')->send(new ReporteGeneral($user));
    }

    public function guardarReporte()
    {
        $today = Carbon::now()->tz('America/Mexico_City');
        // $this->params['fecha_inicio'] = $today->format('Y-m-d');
        // $this->params['fecha_fin'] = $today->addDays('10')->format('Y-m-d');
        $users = $this->mUser->with(['role', 'user_store', 'persona'])->get();

        foreach ($users as $user) {
            if ($user->isAdmin()) {
                // dd($user->persona->email);
                $this->exportAdminFile($user);
            } elseif ($user->isGerente()) {
                $this->exportGerenteFile($user);
            }
        }

        $objParam = json_decode(json_encode($this->params),false);
    }

    private function exportAdminFile($user)
    {
        $objParam = json_decode(json_encode($this->params),false);
        Excel::store(new ServicioExport($objParam), "/exportar/{$user->iduser}/servicios.xlsx");
    }

    private function exportGerenteFile($user)
    {
        $this->params['campo_id'] = 1;
        $this->params['columna_id'] = $user->user_store->pluck('idstore')->toArray();
        $objParam = json_decode(json_encode($this->params),false);
        Excel::store(new ServicioExport($objParam), "/exportar/{$user->iduser}/servicios.xlsx");
    }
}
