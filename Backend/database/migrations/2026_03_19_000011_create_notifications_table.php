<!-- database/migrations/2026_03_19_000011_create_notifications_table.php 
| -- This migration creates the 'notifications' table to store notification information for users.
| -- It includes fields for the user who should receive the notification, the type of notification, and the notification data.
| -- The 'user_id' field is a foreign key referencing the 'users' table, allowing for tracking of which user should receive each notification.
-->
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNotificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('notifications', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('type');
            $table->text('data');
            $table->boolean('read')->default(false);
            $table->timestamps();

            // Foreign key constraint
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('notifications');
    }
}

