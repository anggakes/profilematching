@extends('app')

@section('content')
<h1>Tambah Lowongan Jabatan Baru</h1>
<hr/>

	{!! Form::open(['url'=>'lowonganjabatan']) !!}

		@include('lowonganjabatan.form',['submitButtonText'=>'Tambah Lowongan Jabatan'])
	
	{!! Form::close() !!}

	@include('errors.list')

@stop