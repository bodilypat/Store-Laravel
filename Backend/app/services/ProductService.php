//app/Services/ProductService.php

<?php

namespace App\Services;
use App\Models\Product;
class ProductService
{
    public function getAllProducts()
    {
        return Product::all();
    }

    public function getProductById($id)
    {
        return Product::find($id);
    }

    public function createProduct($data)
    {
        return Product::create($data);
    }

    public function updateProduct($id, $data)
    {
        $product = Product::find($id);
        if ($product) {
            $product->update($data);
            return $product;
        }
        return null;
    }

    public function deleteProduct($id)
    {
        $product = Product::find($id);
        if ($product) {
            $product->delete();
            return true;
        }
        return false;
    }
}

