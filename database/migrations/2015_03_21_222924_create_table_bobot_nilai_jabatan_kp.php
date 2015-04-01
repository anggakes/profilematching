<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBobotNilaiJabatanKp extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bobot_nilai_jabatan_kp', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_lowongan')->unsigned();
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
		Schema::drop('bobot_nilai_jabatan_kp');
	}

}
