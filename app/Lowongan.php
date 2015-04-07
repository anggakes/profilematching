<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Lowongan extends Model {

	protected $table ='lowongan';
	protected $guarded =['id'];
	protected $fillable = [
		'nama',
		'kode'
	];

}
