<?php

namespace App\Http\Controllers;

use App\Conf_Reporte;
use App\Custom_User;
use Illuminate\Http\Request;
use App\Exports\ServicioExport;
use App\Mail\ReporteGeneral;
use App\Servicio;
use App\User;
use Carbon\Carbon;
use Maatwebsite\Excel\Facades\Excel;
use Dompdf\Dompdf;
use Illuminate\Console\Command;
use Illuminate\Database\Eloquent\Builder;
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
        $this->mConfReporte = new Conf_Reporte;
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

        $user = $this->mUser->find($request->parameterv);

        if ($user->isGerente()) {
            $this->params['fecha_inicio'] = $request->fecha_inicio;
            $this->params['fecha_fin'] = $request->fecha_fin;
            $this->params['campo_id'] = 1;
            $this->params['columna_id'] = $user->user_store->pluck('idstore')->toArray();
        }

        if ($request->tipo_archivo == 'excel') {
            $file = $this->getExcel($request);
        } elseif ($request->tipo_archivo == 'pdf') {
            $file = $this->getPdf($request);
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

    public function sendEmail(Custom_User $user)
    {
        // $user = $this->mUser->with(['persona'])->where('iduser', 3)->first();
        Mail::to('abel.castro9111@gmail.com')->send(new ReporteGeneral($user));
    }

    public function sendEmail2()
    {
        $user = $this->mUser->with(['persona'])->where('iduser', 1)->first();
        Mail::to(['abel.castro9111@gmail.com'])->send(new ReporteGeneral($user));
    }

    public function guardarReporte()
    {
        $today = Carbon::now()->tz('America/Mexico_City');
        $today_day = $today->format('d');
        // $this->params['fecha_inicio'] = $today->format('Y-m-d');
        // $this->params['fecha_fin'] = $today->addDays('10')->format('Y-m-d');
        // $users = $this->mUser->with(['role', 'user_store', 'persona'])->get();
        // $today_day = 15;
        $idstates_array = $this->mConfReporte->where('dia_corte', $today_day)->get()->pluck('idstate')->toArray();

        $today = Carbon::now()->tz('America/Mexico_City');
        $fecha_fin = Carbon::now()->tz('America/Mexico_City')->format('Y-m-d');
        $users = $this->mUser
            ->where(function($query) use($idstates_array){
                $query->wherein('idstate', $idstates_array)
                    ->orwhere('idrol', 1);
            })
            ->with(['role', 'user_store', 'persona'])
            ->get();
        foreach ($users as $user) {
            if ($user->isAdmin()) {
                $this->params['fecha_inicio'] = null;
                $this->params['fecha_fin'] = null;
                // dd($user->persona->email);
                // $this->exportAdminFile($user);
                // $this->sendEmail($user);
            } elseif ($user->isGerente()) {
                $this->params['fecha_fin'] = $fecha_fin;
                $day_begin_report =  $this->mConfReporte->where('idstate', $user->idstate)->where('dia_corte', '<', $today_day)->orderBy('dia_corte', 'DESC')->first();
                if ($day_begin_report == null) {
                    $day_begin_report =  $this->mConfReporte->where('idstate', $user->idstate)->where('dia_corte', '>=', $today_day)->orderBy('dia_corte', 'DESC')->first();
                    $this->params['fecha_inicio'] = $today->subMonth()->setDay($day_begin_report->dia_corte)->format('Y-m-d');
                } else {
                    $this->params['fecha_inicio'] = $today->setDay($day_begin_report->dia_corte)->format('Y-m-d');
                }
                $this->exportGerenteFile($user);
                $this->sendEmail($user);
            }
        }

        return 'ok';
    }

    public function test()
    {
        $user = $this->mUser->with('stores')->where('iduser', 3)->get();
        echo($user[0]->stores);

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
