<?php

namespace App;

use App\Http\Controllers\Helpers\Fechas;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    protected $table = 'services';
    protected $primarykey = 'idservice';

    public function porFechas($request)
    {
        $fecha_inicio = $request->fecha_inicio;
        $fecha_fin = $request->fecha_fin;

        $servicios = $this;

        if ($fecha_inicio != null && $fecha_fin != null ) {
            $fecha_inicio = Carbon::parse($request->fecha_inicio)->format('Y-m-d');
            $fecha_fin = Carbon::parse($request->fecha_fin)->addDay()->format('Y-m-d');
            $servicios = $this->whereBetween('date_register', [$fecha_inicio, $fecha_fin]);
        } elseif ($fecha_inicio != null) {
            $fecha_inicio = Carbon::parse($request->fecha_inicio)->format('Y-m-d');
            $servicios = $this->whereDate('date_register', $fecha_inicio);
        } elseif ($fecha_fin != null) {
            $reporte = $this->mReporte->where('date_register', '<=', $fecha_fin)->get();
        } else {
            // $reporte->all();
        }

        return $servicios->get();
    }

    public function fechaLeible()
    {
        $fecha = new Fechas;
        return $fecha->nueva($this->date_register, true);
    }

}
