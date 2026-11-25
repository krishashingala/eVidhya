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
        Schema::table('user_wallet_transaction', function (Blueprint $table) {
            $table->unsignedBigInteger('opposite_user_id')->nullable()->after('student_id');
            $table->foreign('opposite_user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('user_wallet_transaction', function (Blueprint $table) {
            $table->dropForeign(['opposite_user_id']);
            $table->dropColumn('opposite_user_id');
        });
    }
};
