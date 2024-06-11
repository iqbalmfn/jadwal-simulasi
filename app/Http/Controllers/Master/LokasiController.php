<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use App\Models\Location;
use App\Models\locationAvailable;
use App\Models\Period;
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

    public function locationByPeriod($period_id) {
        $period = Period::with('location_available.lokasi')->find($period_id);

        if (!$period) {
            return response()->json([]);
        }

        $locations = $period->location_available->map(function ($location) {
            return [
                'id' => $location->lokasi->id,
                'name' => $location->lokasi->name,
            ];
        });

        return response()->json($locations);
    }
}
