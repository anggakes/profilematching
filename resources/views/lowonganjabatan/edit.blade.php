@extends('app')

@section('content')
	<h1>Edit: {!! $lj-> nik !!} </h1>
	{!! Form::model($lj, ['method'=>'PATCH','action'=>  ['LowonganJabatanController@update',$lj->id]]) !!}
		
		@include('lowonganjabatan.form',['submitButtonText'=>'Ubah Lowongan Jabatan'])
	
	{!! Form::close() !!}

	@include('errors.list')
@stop