<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('wc_order_no')->unique();
            
            $table->string('currency');
            $table->date('createddate');
            $table->string('payment_method');
            $table->string('payment_method_title');
            $table->text('transaction_id');
            
           

            $table->string('billing_first_name');
            $table->string('billing_last_name');
            $table->string('billing_email',190)->unique();
            $table->string('billing_phone',20)->unique();
            $table->string('billing_address_one');
            $table->string('billing_address_two');
            $table->string('billing_company');
            $table->string('billing_city');
            $table->string('billing_state');
            $table->string('billing_postcode');
            $table->string('billing_country');
            
            $table->string('shipping_first_name');
            $table->string('shipping_last_name');
            $table->string('shipping_email',190)->unique();
            $table->string('shipping_phone',20)->unique();
            $table->string('shipping_address_one');
            $table->string('shipping_address_two');
            $table->string('shipping_company');
            $table->string('shipping_city');
            $table->string('shipping_state');
            $table->string('shipping_postcode');
            $table->string('shipping_country');
            

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
