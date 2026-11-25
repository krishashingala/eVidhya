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
        Schema::create('teacher_posts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('teacher_id'); 
            $table->text('image')->nullable(); 
            $table->text('content')->nullable(); 
            $table->string('status')->default('active'); 
            $table->integer('views')->default(0); 
            $table->foreign('teacher_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('teacher_posts');
    }
};
