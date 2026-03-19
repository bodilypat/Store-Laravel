<!-- database/migrations/2026_03_19_000010_create_audit_logs_table.php
| -- This migration creates the 'audit_logs' table to store audit information for user actions.
| -- It includes fields for the action performed, the user who performed it, and additional details.
| -- The 'user_id' field is a foreign key referencing the 'users' table, allowing for tracking of which user performed each action.
-->
<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAuditLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('audit_logs', function (Blueprint $table) {
            $table->id();
            $table->string('action');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->text('details')->nullable();
            $table->timestamps();

            // Foreign key constraint
            $table->foreign('user_id')->references('id')->on('users')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('audit_logs');
    }
}
