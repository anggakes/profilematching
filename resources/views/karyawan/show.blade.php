@extends('template.backend')
@section('css')
	<style type="text/css">
		fieldset{margin-left: 50px;}
		label{		text-align: left!important;
				  	width: 200px!important;
				  	font-size: larger;}
		.controls{font-size: larger;}
	</style>


@stop
@section('content')
<form id="edit-profile" class="form-horizontal">
	<fieldset>
				<legend>Profil Karyawan {{ $karyawan->nama }}</legend>
				<div class="well">
						<div class="control-group">											
							<label class="control-label">Nik</label>
							<div class="controls">: {{ $karyawan->nik }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
						
						<div class="control-group">											
							<label class="control-label">Nama</label>
							<div class="controls">: {{ $karyawan->nama }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Agama</label>
							<div class="controls">: {{ $karyawan->agama }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Alamat</label>
							<div class="controls">: {{ $karyawan->alamat }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
				</div>									
				<br>

				<legend>Profil Syarat Karyawan</legend>
				<div class="well">
						<div class="control-group">											
							<label class="control-label">Pendidikan Terakhir</label>
							<div class="controls">: {{ $karyawan->profilSyaratKaryawan->pendidikan_terakhir }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Lama Bekerja</label>
							<div class="controls">: {{ $karyawan->lamaBekerja() }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
				</div>																							
				<legend>Nilai Kompetensi Inti</legend>
				<div class="well">
						@if(count($karyawan->nilaiKiKaryawan)>0)
						<div class="control-group">											
							<label class="control-label">Integrity</label>
							<div class="controls">: {{ $karyawan->nilaiKiKaryawan->ki1 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Customer Service Orientation</label>
							<div class="controls">: {{ $karyawan->nilaiKiKaryawan->ki2 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Nindya Karya Profesional Style</label>
							<div class="controls">: {{ $karyawan->nilaiKiKaryawan->ki3 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Continuous Learning</label>
							<div class="controls">: {{ $karyawan->nilaiKiKaryawan->ki4 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Adaptability and Capability for Change</label>
							<div class="controls">: {{ $karyawan->nilaiKiKaryawan->ki5 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						@else
							Data Belum diisi
						@endif
				</div>									

				<legend>Nilai Kepemimpinan</legend>
				<div class="well">
						@if(count($karyawan->nilaiKpKaryawan)>0)
						<div class="control-group">											
							<label class="control-label">Interpesonal Persuasiveness Ability</label>
							<div class="controls">: {{ $karyawan->nilaiKpKaryawan->kp1 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Operational Problem Solving and Decision Making</label>
							<div class="controls">: {{ $karyawan->nilaiKpKaryawan->kp2 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Visionary Leadership</label>
							<div class="controls">: {{ $karyawan->nilaiKpKaryawan->kp3 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						@else
							Data Belum diisi
						@endif
				</div>									

				<legend>Nilai Kompetensi Inti</legend>
				<div class="well">
						@if(count($karyawan->nilaiKtKaryawan)>0)
						<div class="control-group">											
							<label class="control-label">Manajemen Jasa Kontruksi</label>
							<div class="controls">: {{ $karyawan->nilaiKtKaryawan->kt1 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																
						<div class="control-group">											
							<label class="control-label">Pengoperasian Program Komputer</label>
							<div class="controls">: {{ $karyawan->nilaiKtKaryawan->kt2 }}</div> <!-- /controls -->				
						</div> <!-- /control-group -->
																

						@else
							Data Belum diisi
						@endif
				</div>									
	</fieldset>
</form>

@stop

