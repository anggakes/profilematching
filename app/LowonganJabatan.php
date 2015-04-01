<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class LowonganJabatan extends Model {

	protected $table ='lowongan_jabatan';
	protected $guarded =['id'];
	protected $fillable = [
		'nama',
		'kode'
	];

}
