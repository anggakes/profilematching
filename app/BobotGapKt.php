<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotGapKt extends Model {

	protected $table ='bobot_gap_kt';
	protected $guarded =['id'];
	protected $fillable = [
		'kt01',
		'kt02'
	];

}
