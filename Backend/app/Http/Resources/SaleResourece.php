<!-- app/Http/Resources/SaleResourece.php 
| -- Sale Resource 
| This resource transforms the Sale model into a JSON format suitable for API responses.
-->
<?php

namespace App\Http\Resources;
use Illuminate\Http\Resources\Json\JsonResource;
class SaleResource extends JsonResource
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
            'sale_id' => $this->sale_id,
            'invoice_no' => $this->invoice_no,
            'customer_id' => $this->customer_id,
            'user_id' => $this->user_id,
            'store_id' => $this->store_id,
            'total' => $this->total,
            'discount' => $this->discount,
            'tax' => $this->tax,
            'grand_total' => $this->grand_total,
            'payment_method' => $this->payment_method,
            'paid_amount' => $this->paid_amount,
            'change_amount' => $this->change_amount,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}

