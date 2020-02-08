<?php

namespace App;

use App\Http\Controllers\Helpers\Fechas;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Servicio extends Model
{
    protected $table = 'services';
    protected $primarykey = 'idservice';

    public function user()
    {
        return $this->belongsTo(UserCustom::class, 'iduser_creator', 'iduser');
    }

    public function userCreator()
    {
        return $this->belongsTo(UserCustom::class, 'iduser_creator', 'iduser');
    }

    public function chofer()
    {
        return $this->belongsTo(Persona::class, 'iduser_driver', 'idpeople');
    }

    public function userStore()
    {
        return $this->belongsTo(User_Tienda::class, 'iduser_creator', 'iduser');
    }

    public function porFechas($request)
    {
        $fecha_inicio = $request->fecha_inicio;
        $fecha_fin = $request->fecha_fin;

        $servicios = $this;

        if ($fecha_inicio != null && $fecha_fin != null ) {
            $fecha_inicio = Carbon::parse($request->fecha_inicio)->format('Y-m-d');
            $fecha_fin = Carbon::parse($request->fecha_fin)->addDay()->format('Y-m-d');
            $servicios = $servicios->whereBetween('date_register', [$fecha_inicio, $fecha_fin]);
        } elseif ($fecha_inicio != null) {
            $fecha_inicio = Carbon::parse($request->fecha_inicio)->format('Y-m-d');
            $servicios = $servicios->whereDate('date_register', $fecha_inicio);
        } elseif ($fecha_fin != null) {
            $reporte = $servicios->where('date_register', '<=', $fecha_fin)->get();
        } else {
            // $reporte->all();
        }

        return $servicios->get();
    }

    public function porFechasObject($request)
    {
        $fecha_inicio = $request->fecha_inicio;
        $fecha_fin = $request->fecha_fin;
        $campo_id = $request->campo_id;
        $columna_id = $request->columna_id;

        $servicios = $this;
        // dd($columna_id, $campo_id);
        if ($campo_id == 1) {
            // ES TIENDA
            if ($columna_id == 0) {
                $servicios = $servicios->has('userStore.store');
            } else {
                $servicios = $servicios->whereHas('userStore.store', function (Builder $query) use($columna_id) {
                    $query->where('idstore', $columna_id);
                });
            }

        } elseif ($campo_id == 2) {
            // ESTADO
            if ($columna_id == 0) {
                $servicios = $servicios->has('userCreator');
            } else {
                $servicios = $servicios->whereHas('userCreator', function (Builder $query) use($columna_id) {
                    $query->where('idstate', $columna_id);
                });
            }
        }

        if ($fecha_inicio != null && $fecha_fin != null ) {
            $fecha_inicio = Carbon::parse($request->fecha_inicio)->format('Y-m-d');
            $fecha_fin = Carbon::parse($request->fecha_fin)->addDay()->format('Y-m-d');
            $servicios = $servicios->whereBetween('date_register', [$fecha_inicio, $fecha_fin]);
        } elseif ($fecha_inicio != null) {
            $fecha_inicio = Carbon::parse($request->fecha_inicio)->format('Y-m-d');
            $servicios = $servicios->whereDate('date_register', $fecha_inicio);
        } elseif ($fecha_fin != null) {
            $reporte = $servicios->where('date_register', '<=', $fecha_fin)->get();
        } else {
            // $reporte->all();
        }

        return $servicios->get();
    }

    public function porTienda($request)
    {

    }

    public function porEstado ($request)
    {

    }

    public function querySearch($request)
    {
        $model = $this->porFechasObject($request);

        if ($request->campo_id == 1) {
            // ES TIENDA
            $model = $model->porTienda($request);
        } else {
            # code...
        }


    }

    public function fechaLeible()
    {
        $fecha = new Fechas;
        return $fecha->nueva($this->date_register, true);
    }

}
