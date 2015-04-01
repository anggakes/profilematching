<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class LulusSyarat extends Model {

	protected $table ='lulus_syarat';
	protected $guarded =['id'];
	protected $fillable = [
		'id_karyawan',
		'id_lowongan'
	];

}
