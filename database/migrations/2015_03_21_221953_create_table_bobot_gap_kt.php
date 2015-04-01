<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBobotGapKt extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bobot_gap_kt', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('kt01')->unsigned();
			$table->integer('kt02')->unsigned();
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
		Schema::drop('bobot_gap_kt');
	}

}
