<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    // Relasi ke tabel User (One To Many)
    public function user(){
        return $this->belongsTo('App\User');
    }

    // Relasi ke table Book (Many To Many)
    public function books(){
        return $this->belongsToMany('App\Book')->withPivot('quantity');
    }


    // dynamic property(dapat dipanggil diview(index.blade.php) tanpa get dan Attribute, 
    // {{$order->totalQuantity}} )
     public function getTotalQuantityAttribute(){
        $total_quantity = 0;
        
        foreach($this->books as $book){
            $total_quantity += $book->pivot->quantity;
        }
         return $total_quantity;
    }
}
