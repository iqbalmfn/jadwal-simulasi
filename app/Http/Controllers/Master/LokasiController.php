<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use App\Models\Location;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class LokasiController extends Controller
{
    public function index()
    {
        $breadcrumbs = [
            ['name' => "Master", "link" => "#"],
            ['name' => "Lokasi"],
        ];

        $datas = Location::orderByDesc('id')->get();

        return view('master.lokasi.index', [
            'title' => 'Lokasi',
            'breadcrumbs' => $breadcrumbs,
            'datas' => $datas,
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required'
        ]);

        $input = $request->except('type');

        Location::create($input);

        Session::flash('success', 'Data berhasil disimpan');

        return redirect()->back();
    }

    public function update(Request $request, Location $lokasi)
    {
        $request->validate([
            'name' => 'required'
        ]);

        $input = $request->except('type');


        $lokasi->update($input);

        Session::flash('success', 'Data berhasil diupdate');

        return redirect()->back()->withInput();
    }

    public function destroy(string $id)
    {
        $lokasi = Location::findOrFail($id);

        $lokasi->delete();

        Session::flash('success', 'Data berhasil dihapus');

        return redirect()->back()->withInput();
    }
}
