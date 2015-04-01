<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableProfilMatching extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('profil_matching', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('cf_kp')->unsigned();
			$table->integer('sf_kp')->unsigned();
			$table->integer('cf_ki')->unsigned();
			$table->integer('sf_ki')->unsigned();
			$table->integer('cf_kt')->unsigned();
			$table->integer('sf_kt')->unsigned();
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
		Schema::drop('profil_matching');
	}

}
