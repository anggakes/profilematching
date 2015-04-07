<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfilSyaratKaryawan extends Model {

	protected $table ='profil_syarat_karyawan';
	protected $guarded =['id'];
	protected $fillable = [
		'id_karyawan',
		'pendidikan_terakhir',
		'tgl_masuk_kerja'
	];

}
