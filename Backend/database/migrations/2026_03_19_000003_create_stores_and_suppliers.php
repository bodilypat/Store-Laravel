<!-- database/migrations/2026_03_19_000003_create_stores_and_suppliers_table.php
| -- This migration creates the 'stores' and 'suppliers' tables for managing store and supplier information.
 -->
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStoresAndSuppliers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Create 'stores' table
        Schema::create('stores', function (Blueprint $table) {
            $table->id('store_id');
            $table->string('name')->unique();
            $table->string('location')->nullable();
            $table->timestamps();
        });

        // Create 'suppliers' table
        Schema::create('suppliers', function (Blueprint $table) {
            $table->id('supplier_id');
            $table->string('name')->unique();
            $table->string('contact_info')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('suppliers');
        Schema::dropIfExists('stores');
    }
}
