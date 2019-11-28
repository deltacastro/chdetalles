<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\ServicioExport;
use Maatwebsite\Excel\Facades\Excel;

class ServiciosController extends Controller
{
    public function exportar()
    {
        return Excel::download(new ServicioExport, 'servicios.xlsx');
    }
}
