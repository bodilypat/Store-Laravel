<!-- app/Http/Resources/CustomerResource.php 
| -- Customer Resource 
| This resource transforms the Customer model into a JSON format suitable for API responses.
-->
<?php

namespace App\Http\Resources;
use Illuminate\Http\Resources\Json\JsonResource;
class CustomerResource extends JsonResource
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
            'customer_id' => $this->customer_id,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'email' => $this->email,
            'phone' => $this->phone,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}


