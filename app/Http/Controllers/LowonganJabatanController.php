<?php namespace App\Http\Controllers;

use App\LowonganJabatan;
use App\Http\Requests;
use App\Http\Requests\LowonganJabatanRequest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\HttpResponse;

class LowonganJabatanController extends Controller {

	public function index()
	{
		$lj= LowonganJabatan::all();
		return view('lowonganjabatan.index', compact('lj'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */

	public function create()
	{
		return view('lowonganjabatan.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(LowonganJabatanRequest $request)
	{
		//
		LowonganJabatan::create($request->all());
		//Auth::user()->articles()->save($article);
		return redirect('lowonganjabatan');

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{		
		$lj=LowonganJabatan::findOrFail($id);
		return view('lowonganjabatan.show',compact('lj'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$lj=LowonganJabatan::findOrFail($id);
		return view('lowonganjabatan.edit',compact('lj'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Request $request, $id)
	{
		LowonganJabatan::findOrFail($id)->update($request->all());
		return redirect('lowonganjabatan');
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
		LowonganJabatan::findOrFail($id)->delete();
		return redirect()->route('lowonganjabatan.index');
	}

	public function datatables(){
		$lj = LowonganJabatan::all();
		$data=array();
		$l=array();
		$i=0;
		foreach ($lj as $value) {
			$l[0] = $value->nama;
			$l[1] = $value->kode;
			$l[2] = "
				<a href='".route('lowonganjabatan.edit',$value->id)."' data-toggle='modal' data-target='#myModal'>Edit</a> - 
				<a href='".route('lowonganjabatan.destroy',$value->id)."' data-method = 'DELETE' data-confirm='yakin untuk menghapus?' >Hapus</a> - 
				<a href='".route('lowonganjabatan.show',$value->id)."'>Kelola</a>
			";

			$data[$i]=$l;
			$i++;
		}

		$return['data'] = $data;
		return response()->json($return);
	}

}
