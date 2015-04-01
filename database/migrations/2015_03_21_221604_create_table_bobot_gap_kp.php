<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBobotGapKp extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bobot_gap_kp', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_karyawan')->unsigned();
			$table->integer('kp01')->unsigned();
			$table->integer('kp02')->unsigned();
			$table->integer('kp03')->unsigned();
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
		Schema::drop('bobot_gap_kp');
	}

}
