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
        Schema::create('about_us', function (Blueprint $table) {
            $table->id();
            $table->string('about_title');
            $table->string('about_short_description');
            $table->string('about_mission');
            $table->string('about_vision');
            $table->string('why_choose_title');
            $table->text('why_choose_description');
            $table->string('why_choose_image');
            $table->string('why_choose_video');
            $table->string('why_choose_video_image');
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
        Schema::dropIfExists('about_us');
    }
};
