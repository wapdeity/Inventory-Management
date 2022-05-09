<?php
namespace App\Http\Controllers\Front;
use App\Http\Controllers\Front\Controller;
use Illuminate\Http\Request;
use App\Http\Order;
use App\Http\OrderDetail;
use DB;

class WcController extends Controller
{
    
    public function index(Request $request)
    {
      \DB::enableQueryLog();
          if($_GET['api_key'] != '' && $_GET['api_key'] === '905ec42bd482b0c77016652d93e4100b84e20d98b048e9d2dd20ab648522375f335b63efcea5031033ac84ae497640df6a181ac9e66dd4e8fe7eab47a87d700c'){
              
            /**
             * @todo
             * Table name should be order_test
             * create a new table and capture complete data in json 
             * Fields should be id(autoincrement), details(longtext), created_at(timestamp)
             **/
            //lets write databse codes here

                $wcData = $_GET;
                //return json_encode($wcData); 
                $testData = array(json_encode($wcData),time());
            //return json_encode($wcData);
               $wcOrderNo =  $wcData['wc_order_no'];
              //$ordertest = "DB::insert('insert into order_test (details) values ($testData)');";
               //Get Laravel order check
               $checkOrder = Order::where('wc_order_no',$wcData['wc_order_no'])->first();
               
               if($checkOrder){
                   
                 
                 $checkOrder->order_total = $wcData['order_total'];
                 $checkOrder->payment_status = $wcData['payment_status'];
                 $checkOrder->save();
               }else{
                   //create new order
                    $orderArr = array_except($wcData, ['api_key','product']);
                   
                    $order = Order::create($orderArr);
                    //return json_encode($orderArr);
                    if($order) {
                        $containers = [];
                        foreach ($wcData['product'] as $key => $value) {
                              $value['order_id'] =   $order->id;
                              $sku = $value['product_sku'];
                              $qty = $value['quantity'];
                              $less = array('cancelled','refunded');
                              if(in_array($wcData['payment_status'],$less)) {
                                //do less the quantity
                                $value['quantity'] = $value['quantity'] + $value['quantity'];
                              } elseif($wcData['payment_status'] == "failed"){
                                $value['quantity'] = $value['quantity'];
                              } else{
                                //update the quantity 
                                $value['quantity'] = $value['quantity'] - $value['quantity'];
                              }
                              
                              $containers[] =  new OrderDetail($value);
                        }
                        //return json_encode($containers);
                        $order->order_details()->saveMany($containers);
                    }
                DB::commit();
               
               }
               
                
            
              
          } else {
              return json_encode(["error"=>"Not authorised!!"]);
          }
        echo '{"message":"Order is created"}';
        return;
    }
   
}
?>