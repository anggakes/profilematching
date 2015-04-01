@extends('app')

@section('content')

<h1>Karyawan</h1>
 <a class="btn btn-primary pull-right" id="sign"  href="{!! route('lowonganjabatan.create') !!}"><i class="icon-g-circle-plus"></i>Tambah</a>
    <table class='table datatables'>
        <thead>
        <tr>
          <th>Nama</th>
          <th>Kode</th>
          <th>#</th>
        </tr>
        </thead>
        <tbody>
          
        </tbody>
    </table>
@stop

@section('footer')

 {!!HTML::script("assets/laravel/laravel.methodHandler.js")!!} 
   
 <script type="text/javascript">    

    $(document).ready(function(){

          $(".datatables").dataTable({
              "ajax" : "{!! route('lowonganjabatan.datatables') !!}",
              "fnInitComplete": function(oSettings, json) {
                  //inisialisi saat datatables setelah load
                   $('a[data-method]').click(function(e){
                      handleMethod(e,$(this));
                      e.preventDefault();
                   });
                }
            }); 

    });
     
 </script>
 @stop

