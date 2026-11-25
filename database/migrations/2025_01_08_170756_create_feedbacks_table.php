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
        Schema::create('feedbacks', function (Blueprint $table) {
            $table->id('id');
            $table->unsignedBigInteger('u_id')->nullable();
            $table->foreign('u_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('feedback_date');
            $table->string('feedback_comment');
            $table->string('feedback_status');
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
        Schema::dropIfExists('feedbacks');
    }
};
