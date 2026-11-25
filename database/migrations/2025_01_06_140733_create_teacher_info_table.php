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
        Schema::create('teacher_info', function (Blueprint $table) {
            $table->id();
            $table->string('qualification');
            $table->unsignedBigInteger('class_id')->nullable();
            $table->foreign('class_id')->references('id')->on('tblcategory')->onDelete('cascade');
            $table->unsignedBigInteger('subject_id')->nullable();
            $table->foreign('subject_id')->references('id')->on('tblcategory')->onDelete('cascade');
            $table->string('experience');
            $table->string('language');
            $table->unsignedBigInteger('t_id')->nullable();
            $table->foreign('t_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('verification_status');
            $table->string('bio');

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
        Schema::dropIfExists('teacher_info');
    }
};
