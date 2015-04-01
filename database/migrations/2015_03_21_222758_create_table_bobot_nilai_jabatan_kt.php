<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBobotNilaiJabatanKt extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bobot_nilai_jabatan_kt', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_lowongan')->unsigned();
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
		Schema::drop('bobot_nilai_jabatan_kt');
	}

}
