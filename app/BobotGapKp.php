<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotGapKp extends Model {

	protected $table ='bobot_gap_kp';
	protected $guarded =['id'];
	protected $fillable = [
		'id_lowongan',
		'id_karyawan',
		'kp1',
		'kp2',
		'kp3'
	];
}
