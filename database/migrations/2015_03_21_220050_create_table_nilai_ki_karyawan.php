<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableNilaiKiKaryawan extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('nilai_ki_karyawan', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_karyawan')->unsigned();
			$table->integer('ki01')->unsigned();
			$table->integer('ki02')->unsigned();
			$table->integer('ki03')->unsigned();
			$table->integer('ki04')->unsigned();
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
		Schema::drop('nilai_ki_karyawan');
	}

}
