<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotGapKi extends Model {

	protected $table ='bobot_gap_ki';
	protected $guarded =['id'];
	protected $fillable = [
		'id_lowongan',
		'id_karyawan',
		'ki1',
		'ki2',
		'ki3',
		'ki4',
		'ki5'
	];

}
