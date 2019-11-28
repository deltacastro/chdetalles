<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\ServicioExport;
use Maatwebsite\Excel\Facades\Excel;

class ServiciosController extends Controller
{
    public function exportar(Request $request)
    {
        return Excel::download(new ServicioExport($request), 'servicios.xlsx');
    }
}
