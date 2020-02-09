<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service_Detail extends Model
{
    protected $table = 'services_detail';
    protected $primarykey = 'idservice_detail';

    public function getCostoAttribute($value)
    {
        return number_format($value, 2);
    }

    public function getCostoVueltasAttribute($value)
    {
        return number_format($value, 2);
    }

    public function getCostoPenalizacionAttribute($value)
    {
        return number_format($value, 2);
    }

    public function getTotalAttribute($value)
    {
        return number_format($value, 2);
    }

}
