<?php namespace App\Http\Controllers;

use App\Karyawan;
use App\Http\Requests;
use App\Http\Requests\KaryawanRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\HttpResponse;

class KaryawanController extends Controller {

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
	public function store(KaryawanRequest $request)
	{
		//
		Karyawan::create($request->all());
		//Auth::user()->articles()->save($article);
		return redirect('karyawan');

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{		
		$karyawan=Karyawan::findOrFail($id);
		return view('karyawan.show',compact('karyawan'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$karyawan=Karyawan::findOrFail($id);
		return view('karyawan.edit',compact('karyawan'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $id)
	{
		Karyawan::findOrFail($id)->update($request->all());
		return redirect('karyawan');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
		Karyawan::findOrFail($id)->delete();
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
			$l[4] = "
				<a href='".route('karyawan.edit',$value->id)."' data-toggle='modal' data-target='#myModal'>Edit</a> - 
				<a href='".route('karyawan.destroy',$value->id)."' data-method = 'DELETE' data-confirm='yakin untuk menghapus?' >Hapus</a> - 
				<a href='".route('karyawan.show',$value->id)."'>Kelola</a>
			";

			$data[$i]=$l;
			$i++;
		}

		$return['data'] = $data;
		return response()->json($return);
	}
}