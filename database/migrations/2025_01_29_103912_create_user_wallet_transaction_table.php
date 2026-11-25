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
        Schema::create('user_wallet_transaction', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('student_id'); // Student ID (Foreign Key)
            $table->decimal('amount', 10, 2); // Amount Added/Deducted
            $table->enum('transaction_type', ['credit', 'debit']); // Credit/Debit
            $table->string('description')->nullable(); // Optional Description
            
            // Foreign key constraint (Optional)
            $table->foreign('student_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('user_wallet_transaction');
    }
};
