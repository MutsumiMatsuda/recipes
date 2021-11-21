<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRecipesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('recipes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('user_id');
            $table->string('name');
            $table->text('body');
            $table->bigInteger('recipe_category_id')->nullable();
            $table->bigInteger('menu_id');
            $table->bigInteger('howto_id')->nullable();
            $table->string('image_path')->nullable();
            $table->string('image_path2')->nullable();
            $table->tinyint('is_easy')->default(0);
            $table->tinyint('is_favorite')->default(0);
            $table->tinyint('is_refresh')->default(0);
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
        Schema::dropIfExists('recipes');
    }
}
