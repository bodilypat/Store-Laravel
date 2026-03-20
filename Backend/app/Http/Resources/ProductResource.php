<!-- app/Http/Resources/ProductResource.php    # API Formatter for Product 
| -- Product Resource 
| This resource transforms the Product model into a JSON format suitable for API responses.
-->
<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request): array
    {
        return [
            'product_id' => $this->product_id,
            'product_name' => $this->product_name,
            'barcode' => $this->barcode,
            'category_id' => $this->category_id,
            'supplier_id' => $this->supplier_id,
            'price' => $this->price,
            'cost_price' => $this->cost_price,
            'stock' => $this->stock,
            'min_stock' => $this->min_stock,
            'description' => $this->description,
            'product_image' => $this->product_image,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}

