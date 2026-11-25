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
        Schema::create('messages', function (Blueprint $table) {
            $table->id(); // Primary Key
            $table->unsignedBigInteger('sender_id'); // Sender's ID
            $table->unsignedBigInteger('recipient_id'); // Recipient's ID
            $table->timestamp('read_at')->nullable(); // When the message was read
            $table->text('body'); // Message content
            $table->timestamps(); // Created and updated timestamps
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('messages');
    }
};
