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
        Schema::table('tblcategory', function (Blueprint $table) {
            $table->enum('c_type', ['class', 'blog', 'news'])->default('class');
            $table->string('c_title')->nullable();
            $table->text('c_content')->nullable();
            $table->integer('c_views')->nullable()->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tblcategory', function (Blueprint $table) {
            $table->dropColumn(['c_type', 'c_title', 'c_content', 'c_views']);
        });
    }
};
