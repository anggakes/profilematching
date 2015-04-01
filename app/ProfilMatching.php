<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfilMatching extends Model {

	protected $table ='profil_matching';
	protected $guarded =['id'];
	protected $fillable = [
		'cf_kp',
		'sf_kp',
		'cf_kl',
		'sf_kl',
		'cf_kt',
		'sk_kt'
	];


}
