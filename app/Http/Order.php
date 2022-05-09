<?php

namespace App\Http;

use Illuminate\Database\Eloquent\Model;
use App\Http\OrderDetail;

class Order extends Model
{

    protected $fillable = ['wc_order_no','currency','payment_status','date_created','payment_method','payment_method_title','transaction_id','billing_first_name','billing_last_name','billing_company','billing_email','billing_phone','billing_address_one','billing_address_two','billing_city','billing_state','billing_postcode','billing_country','shipping_first_name','shipping_last_name','shipping_company','shipping_email','shipping_phone','shipping_address_one','shipping_address_two','shipping_city','shipping_state','shipping_postcode','shipping_country','order_total'];
    
    public function order_details() {

        return $this->hasMany(OrderDetail::class);
    }
}
