<?php

namespace App\Imports;

use Modules\ProductManager\Entities\Product;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ProductsImport implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        
        return new Product([
            'image' => $row['picture'],
            'sku' => $row['code'],
            'name' => $row['item'],
            'shipping_dimension_one' => $row['dimensions'],
            'regular_price' => $row['nis']
            
        ]);

        
    }
}
