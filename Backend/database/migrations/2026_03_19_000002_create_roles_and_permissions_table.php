<!-- database/migrations/2026_03_19_000002_create_roles_and_permissions_table.php
| -- This migration creates the 'roles' and 'permissions' tables, along with a pivot table 'role_user' to manage the many-to-many relationship between users and roles. 
 -->
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRolesAndPermissionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Create 'roles' table
        Schema::create('roles', function (Blueprint $table) {
            $table->id('role_id');
            $table->string('name')->unique();
            $table->string('description')->nullable();
            $table->timestamps();
        });

        // Create 'permissions' table
        Schema::create('permissions', function (Blueprint $table) {
            $table->id('permission_id');
            $table->string('name')->unique();
            $table->string('description')->nullable();
            $table->timestamps();
        });

        // Create pivot table for many-to-many relationship between users and roles
        Schema::create('role_user', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('role_id');
            $table->timestamps();

            // Foreign key constraints
            $table->foreign('user_id')->references('user_id')->on('users')->onDelete('cascade');
            $table->foreign('role_id')->references('role_id')->on('roles')->onDelete('cascade');

            // Unique constraint to prevent duplicate role assignments
            $table->unique(['user_id', 'role_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('role_user');
        Schema::dropIfExists('permissions');
        Schema::dropIfExists('roles');
    }
}

