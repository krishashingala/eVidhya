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
        Schema::create('student_booking', function (Blueprint $table) {
            $table->id();
    
            $table->enum('status', ['confirmed', 'cancelled', 'pending'])->default('pending'); 
            $table->enum('type', ['call', 'chat', 'vc']); 
            $table->text('description')->nullable();
            $table->unsignedBigInteger('s_id');
            $table->foreign('s_id')->references('id')->on('users')->onDelete('cascade'); 
    
            $table->unsignedBigInteger('appointment_id');
            $table->foreign('appointment_id')->references('id')->on('teacher_availability')->onDelete('cascade'); 
    
            // Timestamps
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
        Schema::dropIfExists('student_booking');
    }
};
