<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotNilaiJabatanKl extends Model {

	protected $table ='bobot_nilai_jabatan_kl';
	protected $guarded =['id'];
	protected $fillable = [
		'id_lowongan',
		'kl01',
		'kl02',
		'kl03',
		'kl04',
		'kl05'
	];

}
