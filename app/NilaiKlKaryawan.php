<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class NilaiKlKaryawan extends Model {

	protected $table ='nilai_kl_karyawan';
	protected $guarded =['id'];
	protected $fillable = [
		'id_karyawan',
		'kl01',
		'kl02',
		'kl03',
		'kl04'
	];


}
