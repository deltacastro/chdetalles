<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User_Tienda extends Model
{
    protected $table = 'user_store';
    protected $primarykey = 'iduser_store';

    public function store()
    {
        return $this->belongsTo(Tienda::class, 'idstore', 'idstore');
    }
}
