<?php

namespace App\Http\Controllers;

use App\Models\Biodata;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PesertaController extends Controller
{
    public function index()
    {
        $breadcrumbs = [
            ['name' => "Master", "link" => "#"],
            ['name' => "Lokasi"],
        ];

        $datas = Biodata::orderByDesc('created_at')->get();

        return view('peserta.index', [
            'title' => 'Peserta',
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

        Biodata::create($input);

        Session::flash('success', 'Data berhasil disimpan');

        return redirect()->back();
    }

    public function update(Request $request, Biodata $peserta)
    {
        $request->validate([
            'name' => 'required'
        ]);

        $input = $request->except('type');


        $peserta->update($input);

        Session::flash('success', 'Data berhasil diupdate');

        return redirect()->back()->withInput();
    }

    public function destroy(string $id)
    {
        $peserta = Biodata::findOrFail($id);

        $peserta->delete();

        Session::flash('success', 'Data berhasil dihapus');

        return redirect()->back()->withInput();
    }
}
