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
        Schema::create('blogs', function (Blueprint $table) {
            $table->id('b_id');
            $table->unsignedBigInteger('c_id')->nullable();
            $table->foreign('c_id')->references('c_id')->on('tblcategory')->onDelete(action: 'cascade');
            $table->string('b_title')->nullable();
            $table->string('b_image')->nullable();
            $table->string('b_contant')->nullable();
            $table->integer('b_status')->default(0);
            $table->string('b_views')->nullable();
            $table->timestamp('b_publishdate')->nullable();
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
        Schema::dropIfExists('blogs');
    }
};
