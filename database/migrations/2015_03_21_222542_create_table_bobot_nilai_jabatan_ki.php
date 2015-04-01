<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBobotNilaiJabatanKi extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bobot_nilai_jabatan_ki', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_lowongan')->unsigned();
			$table->integer('ki01')->unsigned();
			$table->integer('ki02')->unsigned();
			$table->integer('ki03')->unsigned();
			$table->integer('ki04')->unsigned();
			$table->integer('ki05')->unsigned();
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
		Schema::drop('bobot_nilai_jabatan_ki');
	}

}
