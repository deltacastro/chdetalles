<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserCustom extends Model
{
    protected $table = 'users';
    protected $primarykey = 'iduser';

    public function tiendas()
    {
        return $this->belongsToMany(Tienda::class, 'user_store', 'iduser', 'idstore', 'iduser', 'idstore');
    }
}
