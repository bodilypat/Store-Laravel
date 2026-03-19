<!-- database/migrations/2026_03_19_000008_create_payments_table.php
| -- This migration creates the 'payments' table to store payment information for orders. 
| -- It includes fields for the order ID, payment method, amount, status, and timestamps. 
| -- The 'order_id' field is a foreign key referencing the 'orders' table, ensuring that each payment is associated with a valid order.
-->
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('order_id');
            $table->string('payment_method');
            $table->decimal('amount', 10, 2);
            $table->string('status');
            $table->timestamps();

            // Foreign key constraint
            $table->foreign('order_id')->references('id')->on('orders')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payments');
    }
}


