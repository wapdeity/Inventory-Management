<?php

namespace App\Http;
use App\Http\Order;
use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $fillable = ['order_id','product_id','variation_id','product_sku','item_type','item_name','line_subtotal','quantity','tax_class','line_subtotal_tax','line_total','line_total_tax','product_price'];

    public function order() {

        return $this->belongsTo(Order::class);
    }
}
