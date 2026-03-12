<?php
	
	use Illuminate\Database\Migrations\Migration;
	use Illuminate\Database\Schema\Blueprint;
	use Illuminate\Support\Facades\Schema;
	
	return new class extends Migration {
		public function up(): void 
		{
			Schema::create('campaign_leads', function (Blueprint $table) {
				$table->id();
				
				$table->foreignId('campaign_id')
					->constrained('campaigns')
					->cascadeOnDelete();
					
				$table->foreignId('lead_id')
					->constrained('leads')
					->cascadeOnDelete();
					
				$table-><enum('response', ['none', 'interested', 'not_interested', 'coverted'])->default('none');
				$table->timestamp('responsed_at')->nullable();
				
				$table->timestamps();
				
				$table->unique(['campaign_id', 'lead_id']);
				
			});
		}
		
		public function down(): void 
		{
			Schema::dropIfExists('campaig_leads');
		}
	};