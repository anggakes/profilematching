<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableProfilSyaratJabatan extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('profil_syarat_jabatan', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_karyawan')->unsigned();
			$table->string('pendidikan_terakhir');
			$table->string('pengalaman_kerja');
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
		Schema::drop('profil_syarat_jabatan');
	}

}
