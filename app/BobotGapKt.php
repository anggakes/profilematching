<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotGapKt extends Model {

	protected $table ='bobot_gap_kt';
	protected $guarded =['id'];
	protected $fillable = [
		'id_lowongan',
		'id_karyawan',
		'kt1',
		'kt2'
	];

}
