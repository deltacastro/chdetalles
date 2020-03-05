<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Custom_User extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'iduser';

    public function estado()
    {
        return $this->belongsTo(Estado::class, 'idstate', 'idstate');
    }

    public function persona()
    {
        return $this->belongsTo(Persona::class, 'idpeople', 'idpeople');
    }

    public function role()
    {
        return $this->belongsTo(Role::class, 'idrol', 'idrol');
    }

    public function user_store()
    {
        return $this->hasMany(User_Tienda::class, 'iduser', 'iduser');
    }

    public function stores()
    {
        return $this->belongsToMany(Tienda::class, 'user_store', 'iduser', 'idstore', 'iduser', 'idstore');
    }

    public function isAdmin()
    {
        return $this->role->idrol === 1;
    }

    public function isEmpleado()
    {
        return $this->role->idrol === 2;
    }

    public function isChofer()
    {
        return $this->role->idrol === 3;
    }

    public function isGerente()
    {
        return $this->role->idrol === 4;
    }
}
