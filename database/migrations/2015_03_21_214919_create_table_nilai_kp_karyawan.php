<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableNilaiKpKaryawan extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('nilai_kp_karyawan', function(Blueprint $table)
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
		Schema::drop('nilai_kp_karyawan');
	}

}
