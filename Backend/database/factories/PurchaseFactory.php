<!-- database/factories/PurchaseFactory.php -->

<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\Purchase;
use Illuminate\Database\Eloquent\Factories\Factory;

class PurchaseFactory extends Factory
{
    protected $model = Purchase::class;

    public function definition()
    {
        return [
            'product_id' => Product::factory(),
            'quantity' => $this->faker->numberBetween(1, 100),
            'purchase_price' => $this->faker->randomFloat(2, 1, 100),
            'purchase_date' => $this->faker->dateTimeThisYear(),
        ];
    }
}


