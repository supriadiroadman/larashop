<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use SoftDeletes;

    public function categories()
    {
        return $this->belongsToMany('App\Category');
    }

    // Relasi ke table orders (Many To Many)
    public function orders(){
        return $this->belongsToMany('App\Order');
    }
}
