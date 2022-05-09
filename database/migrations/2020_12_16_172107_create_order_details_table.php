<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('order_id')->unsigned()->foreign('order_id')->references('id')->on('orders');
            $table->bigInteger('product_id')->unsigned();
            $table->bigInteger('variation_id')->unsigned();
            $table->string('product_sku');
            $table->string('item_type');
            $table->string('item_name');
            $table->string('line_subtotal',8,2);
            $table->string('quantity');
            $table->string('tax_class');
            $table->decimal('line_subtotal_tax',8,2);
            $table->decimal('line_total',8,2);
            $table->decimal('line_total_tax',8,2);
            $table->decimal('product_price',8,2);
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
        Schema::dropIfExists('order_details');
    }
}
