		<div class="form-group">
			{!! Form::label('nik','NIK :') !!}
			{!! Form::text('nik',null,['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('nama','Nama :') !!}
			{!! Form::text('nama',null,['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('agama','Agama :') !!}
			{!! Form::text('agama',null,['class'=>'form-control']) !!}
		</div>

		<div class="form-group">
			{!! Form::label('alamat','Alamat :') !!}
			{!! Form::textarea('alamat',null,['class'=>'form-control']) !!}
		</div>


		<div class="form-group">
			{!! Form::submit($submitButtonText,['class'=>'btn btn-primary form-control']) !!}
		</div>
	