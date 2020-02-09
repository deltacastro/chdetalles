<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\ServicioExport;
use App\Servicio;
use Maatwebsite\Excel\Facades\Excel;
use Dompdf\Dompdf;

class ServiciosController extends Controller
{
    public function __construct()
    {
        $this->mServicio = new Servicio;
    }

    public function exportar(Request $request)
    {
        $file = null;

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
}
