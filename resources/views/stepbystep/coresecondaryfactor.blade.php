@extends('template.backend')

@section('content')
<a href="{!! action('StepByStepController@getConvertgap',[$id_lowongan]
	)!!}" class='btn btn-primary pull-right'>Selanjutnya</a>
<h3>Step By Step Core & Secondary Factor</h3>
<hr>

@stop