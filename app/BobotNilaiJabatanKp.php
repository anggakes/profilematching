<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotNilaiJabatanKp extends Model {

	protected $table ='bobot_nilai_jabatan_kp';
	protected $guarded =['id'];
	protected $fillable = [
		'id_lowongan',
		'kp01',
		'kp02',
		'kp03'
	];

}
