@extends('template.backend')

@section('content')
@if(Auth::user()->roles == 'admin')
<a href="{!! action('SeleksiJabatanController@getLulusSyarat',[$lowongan->id]
	)!!}" class='btn btn-primary btn-lg pull-right'> Seleksi Lulus Syarat</a>
@endif
@if(Auth::user()->roles == 'tim independent')
<a href="{!! action('SeleksiJabatanController@getSeleksiJabatan',[$lowongan->id]
	)!!}" class='btn btn-primary btn-lg {!! (count($kandidat)>0)? "" : "disabled" !!} pull-right'> Seleksi Profile Matching</a>
<a href="{!! action('StepByStepController@getGap',[$lowongan->id]
	)!!}" class='btn btn-primary btn-lg {!! (count($hasil)>0)? "" : "disabled" !!} pull-right'> Step By Step</a>

<a href="" class='btn btn-primary btn-lg pull-right'>Cetak</a>
@endif
<h1>Jabatan {{ $lowongan->jabatan->nama }} </h1>

<hr>
<div class='pull-right'> 
Divisi : 
@foreach ($lowongan->jabatan->divisi as $key => $value)
<span class="label label-warning">{!! $value->nama !!}</span>
@endforeach
</div>
<span class='label' style='padding:3px;font-size:14pt'>
Kandidat terpilih : 
@if(count($hasil)>0)
{!! $hasil[0]->karyawan->nama; !!}
@else
"Belum ada yang terpilih"
@endif
<br><br>
</span>
<table class='table table-bordered'>
<thead>
<tr>
<th>Peringkat</th>
<th>Nama</th>
<th>Divisi</th>
@if(Auth::user()->roles == 'tim independent')
<th>Nilai</th>
@endif
</tr>
</thead>
<tbody>

@if(count($hasil)>0)
<?php $i=1; ?>
@foreach ($hasil as $key => $value)
<tr>
<td>{!! $i++ !!}</td>
<td>{!! $value->karyawan->nama !!}</td>
<td>{!! $value->karyawan->profilSyaratKaryawan->divisi->nama !!}</td>
<td>{!! $value->nilai!!}</td>
</tr>
@endforeach
@else
<tr>
<td colspan=3>harap klik tombol proses</td>
</tr>
@endif
</tbody>
</table>

<div class='lulus-syarat'> <!-- Lulus Syarat -->
<hr>
<h4>Kandidat Karyawan Lulus Syarat :</h4>
<br>
<div class='alert alert-info'>
<h4>Info </h4> 
Admin hanya dapat melakukan seleksi lulus syarat karyawan. untuk input nilai karyawan dan hasil seleksi dilakukan oleh tim independent.
</div>

<table class='table table-bordered'>
<thead>
<tr>
<th>Nama</th>
<th>Divisi</th>
@if(Auth::user()->roles == 'tim independent')
<th>Input Nilai</th>
@endif
</tr>
</thead>
<tbody>

@if(count($kandidat)>0)
@foreach ($kandidat as $key => $value)
<tr {!! (count($value->karyawan->nilaiKiKaryawan)==0) ? "style='background:pink'" : "" !!}  >
<td>{!! $value->karyawan->nama !!}</td>
<td>{!! $value->karyawan->profilSyaratKaryawan->divisi->nama !!}</td>
@if(Auth::user()->roles == 'tim independent')
<td><a href='{!!route("karyawan.get.nilai",[$lowongan->id,$value->karyawan->id]) !!}'>Input Nilai</a></td>
@endif
</tr>

@endforeach
@else
<tr>
<td colspan=3>harap klik tombol proses</td>
</tr>
@endif
</tbody>
</table>

</div>  <!-- Lulus Syarat -->

@stop

