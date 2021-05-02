<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table='type_products';
    protected $fillable=['id','type_name','manu_id'];
    public $timestamps=false;

    //detail bill
    public function DetailBill(){
        return $this->hasOne(App\DetailBill);
    }

    //evaluate
    public function Evaluate(){
        return $this->hasMany(App\Evaluate);
    }

    //type Product
    public function TypeProduct(){
        return $this->belongsTo(App\TypeProduct);
    }

    //manufactures
    public function Manufacture(){
        return $this->belongsTo(App\TypeProduct);
    }
}