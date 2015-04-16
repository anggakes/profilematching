<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Dashboard - Bootstrap Admin Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
{!!Html::style("assets/css/bootstrap.min.css")!!}
{!!Html::style("assets/css/bootstrap-responsive.min.css")!!}
<!--link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet"-->

{!!Html::style("assets/css/font-awesome.css")!!}
{!!Html::style("assets/css/style.css")!!}
{!!Html::style("assets/css/pages/dashboard.css")!!}

<!-- {?!!Html::script("assets/js/jquery-1.7.2.min.js")!!} -->
{!!Html::script("assets/jquery/jquery-2.0.3.min.js")!!}

{!!Html::script("assets/datatables/jquery.datatables.js")!!}
{!!Html::style("assets/datatables/jquery.datatables.css")!!}
<!-- Css -->
@yield('css');


<!-- Le Html5 shim, for IE6-8 support of Html5 elements -->
<!--[if lt IE 9]>
      <script src="http://Html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"><a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="index.html">{!!Html::image("assets/logo/nindya-01.png");!!}Bootstrap Admin Template </a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
        @if(Auth::check())
        
           <li><a href="{!! route("user.index")!!}"><i class="icon-user"></i><span>{!! @Auth::user()->name!!}</span> </a> </li>
           <li><a href="{!! url("login/logout")!!}"><span>Logout</span> </a> </li>
        @else
          
           <li><a href="{!! url("login")!!}"><i class="icon-user"></i><span>login</span> </a> </li>

        @endif
        </ul>

       
      </div>
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->
<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        @if(Auth::check())
        <li class="active"><a href="{!! url("/")!!}"><i class="icon-dashboard"></i><span>Dashboard</span> </a> </li>
        @if(Auth::user()->roles == 'admin')
        <li><a href="{!! route("user.index")!!}"><i class="icon-user"></i><span>Manajemen User</span> </a> </li>
        @endif
         <li><a href="{!! route("karyawan.index")!!}"><i class="icon-list-alt"></i><span>Karyawan</span> </a> </li>
        @if(Auth::user()->roles == 'admin')
        <li><a href="{!! route("lowongan.index")!!}"><i class="icon-star"></i><span>Lowongan Jabatan</span> </a> </li>       
        @endif
        @endif
      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<!-- /subnavbar -->

<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">

<!-- Content pada template -->
 <div class="span12">
    <div class="widget widget-nopad" >
            <div class="widget-header"> 
            </div>
            <!-- /widget-header -->
            <div class="widget-content" style='min-height: 300px'>
              <div class="widget big-stats-container">
@yield('content')
</div>
           </div>
         </div>
    </div>
<!-- akhi content pada template -->    

      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->

<!-- /extra -->
<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> &copy; 2013 Nindya Karya - Sistem Informasi Kenaikan Jabatan </div>
        <!-- /span12 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /footer-inner --> 
</div>
<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 

{!!Html::script("assets/bootstrap/js/bootstrap.js")!!}
{!!Html::script("assets/laravel/laravel.bootstrap.js")!!} 
{!!Html::script("assets/datatables/jquery.dataTables.js")!!}
{!!Html::script("assets/js/base.js")!!}

<!-- Js -->


<script type="text/javascript">
    /* refresh modal u can change the text with img */
	    refreshModal("Loading..");
</script>

@yield('js');

</body>

</html>





