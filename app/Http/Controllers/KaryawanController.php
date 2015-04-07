<?php namespace App\Http\Controllers;

use App\Karyawan;
use App\ProfilSyaratKaryawan;
use App\Http\Requests;
use App\Http\Requests\KaryawanRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\HttpResponse;


class KaryawanController extends Controller {

	/* 
	|
	|	menggunakan route model binding 
	|	model binding di simpan di providers/RouteServiceProvider
	|
	*/


	public function index()
	{
		$karyawan= Karyawan::all();
		return view('karyawan.index', compact('karyawan'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */

	public function create()
	{
		return view('karyawan.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Request $request)
	{
		//
		$p = new ProfilSyaratKaryawan($request->input('profil'));
		$karyawan = Karyawan::create($request->input('karyawan'));
		$karyawan->profilSyaratKaryawan()->save($p);
		//Auth::user()->articles()->save($article);
		return redirect('karyawan');

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($karyawan)
	{		
		
		return view('karyawan.show',compact('karyawan'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($karyawan)
	{
		return view('karyawan.edit',compact('karyawan'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $karyawan)
	{	
		
		$karyawan->update($request->input("karyawan"));
		$karyawan->profilSyaratKaryawan()->update($request->input('profil'));

		return redirect('karyawan');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($karyawan)
	{
		//
		$karyawan->delete();
		return redirect()->route('karyawan.index');
	}

	
	/* tidak terpengaruh model binding */

	public function getNilai($id_karyawan){
		$karyawan = Karyawan::findOrFail($id_karyawan);
		return view('karyawan.nilai')
			->with('karyawan',$karyawan);
	}

	public function PostNilai($id_karyawan, Request $request){
		
		$karyawan =  Karyawan::findOrFail($id_karyawan);

		$karyawan->saveNilai($request->all());

		return redirect()->route('karyawan.index');
	}

	public function datatables(){
		$karyawan = Karyawan::all();
		$data=array();
		$l=array();
		$i=0;
		foreach ($karyawan as $value) {
			$l[0] = $value->nik;
			$l[1] = $value->nama;
			$l[2] = $value->agama;
			$l[3] = $value->alamat;
			$l[4] = $value->profilSyaratKaryawan->pendidikan_terakhir;

			$l[5] =$value->lamaBekerja();
			$l[6] = "
				<a href='".route('karyawan.edit',$value->id)."' data-toggle='modal' data-target='#myModal'>Edit</a> - 
				<a href='".route('karyawan.destroy',$value->id)."' data-method = 'DELETE' data-confirm='yakin untuk menghapus?' >Hapus</a> - 
				<a href='".route('karyawan.show',$value->id)."'>Detail</a> - 
				<a href='".route('karyawan.get.nilai',$value->id)."'>Input Nilai</a>
							";

			$data[$i]=$l;
			$i++;
		}

		$return['data'] = $data;
		return response()->json($return);
	}
}