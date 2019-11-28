<?php

namespace App\Exports;

use App\Servicio;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class ServicioExport implements ShouldAutoSize, FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    //     return Servicio::all();
    // }

    public function view(): View
    {
        return view('exportar._servicios', [
            'servicios' => Servicio::all()
        ]);
    }
}
