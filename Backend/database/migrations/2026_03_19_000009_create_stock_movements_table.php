<!-- database/migrations/2026_03_19_000009_create_stock_movements_table.php
| -- This migration creates the 'stock_movements' table to store information about stock movements for products.
| -- It includes fields for the product ID, quantity, movement type, and timestamps.
| -- The 'product_id' field is a foreign key referencing the 'products' table, ensuring that each stock movement is associated with a valid product.
-->
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStockMovementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stock_movements', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('product_id');
            $table->integer('quantity');
            $table->string('movement_type'); // e.g., 'in' for stock added, 'out' for stock removed
            $table->timestamps();

            // Foreign key constraint
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stock_movements');
    }
}

