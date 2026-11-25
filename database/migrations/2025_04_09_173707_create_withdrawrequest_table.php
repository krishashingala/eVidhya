<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('withdrawrequest', function (Blueprint $table) {
            $table->id();
            $table->foreignId('teacher_id')->constrained('users')->onDelete('cascade');
            $table->decimal('withdrawAmount');
            $table->enum('status', ['Released', 'Pending', 'Cancel'])->default('Pending');
            $table->foreignId('method_id')->constrained('withdrawmethods')->onDelete('cascade');
            $table->string('upiId')->nullable();
            $table->string('accountNumber')->nullable();
            $table->string('ifscCode')->nullable();
            $table->string('accountHolderName')->nullable();
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
        Schema::dropIfExists('withdrawrequest');
    }
};
