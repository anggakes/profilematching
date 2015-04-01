<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotGapKp extends Model {

	protected $table ='bobot_gap_kp';
	protected $guarded =['id'];
	protected $fillable = [
		'id_karyawan',
		'kp01',
		'kp02',
		'kp03'
	];
}
