<!-- database/factories/ProductFactory.php -->

<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Product;
use App\Models\Category;
use App\Models\Supplier;

class ProductFactory extends Factory
{
    protected $model = Product::class;

    public function definition()
    {
        return [
            'name' => $this->faker->unique()->word(2, true),
            'category_id' => Category::factory(),
            'supplier_id' => Supplier::factory(),
            'sku' => $this->faker->unique()->bothify('SKU-####'),
            'barcode' => $this->faker->unique()->bothify('BARCODE-####'),
            'cost_price' => $this->faker->randomFloat(2, 1, 50),
            'sale_price' => $this->faker->randomFloat(2, 1, 100),
            'stock_quantity' => $this->faker->numberBetween(1, 100),
            'minimum_stock' => $this->faker->numberBetween(1, 20),
            'description' => $this->faker->sentence(),
            'status' => $this->faker->randomElement(['active', 'inactive']),
        ];
    }
}





