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
        Schema::create('tblcategory', function (Blueprint $table) {
            $table->id('c_id');
            $table->string('c_name');
            $table->unsignedBigInteger('parent_id')->nullable();
            $table->foreign('parent_id')->references('c_id')->on('tblcategory')->onDelete('cascade');
            $table->integer('c_status')->default(0);  
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
        Schema::dropIfExists('tblcategory');
    }
};
