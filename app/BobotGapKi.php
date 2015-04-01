<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class BobotGapKi extends Model {

	protected $table ='bobot_gap_ki';
	protected $guarded =['id'];
	protected $fillable = [
		'kl01',
		'kl02',
		'kl03',
		'kl04',
		'kl05'
	];

}
