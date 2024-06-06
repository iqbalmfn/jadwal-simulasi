<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use App\Models\Location;
use App\Models\locationAvailable;
use App\Models\Period;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PeriodeController extends Controller
{
    public function index()
    {
        $breadcrumbs = [
            ['name' => "Master", "link" => "#"],
            ['name' => "Periode"],
        ];

        $datas = Period::query()
            ->with('location_available.lokasi')
            ->orderByDesc('id')
            ->get();

        $locations = Location::all()->pluck('name');

        return view('master.periode.index', [
            'title' => 'Periode',
            'breadcrumbs' => $breadcrumbs,
            'datas' => $datas,
            'locations' => $locations
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_periode' => 'required',
            'lokasi_tersedia' => 'required',
        ]);

        // simpan ke table periode
        $periode = Period::create([
            'nama_periode'  => $request->nama_periode,
            'is_active'     => $request->is_active ? $request->is_active : 0
        ]);

        // extract input lokasi tersedia
        $lokasi_tersedia = json_decode($request->lokasi_tersedia, true);
        foreach ($lokasi_tersedia as $lokasi) {
            // baca data lokasi berdasarkan nama
            $dataLokasi = Location::whereName($lokasi['value'])->first();

            // simpan ke table location_availables
            locationAvailable::create([
                'period_id' => $periode->id,
                'location_id' => $dataLokasi->id
            ]);
        }

        Session::flash('success', 'Data berhasil disimpan');

        return redirect()->back();
    }

    public function update(Request $request, Period $periode)
    {
        $request->validate([
            'nama_periode' => 'required',
            'lokasi_tersedia' => 'required',
        ]);

        // simpan ke table periode
        $periode->update([
            'nama_periode'  => $request->nama_periode,
            'is_active'     => $request->is_active ? $request->is_active : 0
        ]);

        // update status non active untuk periode lain
        if ($request->is_active == 1) {
            Period::whereNot('id', $periode->id)
                ->update([
                    'is_active' => 0
                ]);
        }

        // reset lokasi tersedia
        locationAvailable::wherePeriodId($periode->id)->delete();

        // extract input lokasi tersedia
        $lokasi_tersedia = json_decode($request->lokasi_tersedia, true);
        foreach ($lokasi_tersedia as $lokasi) {
            // baca data lokasi berdasarkan nama
            $dataLokasi = Location::whereName($lokasi['value'])->first();

            // simpan ke table location_availables
            locationAvailable::create([
                'period_id' => $periode->id,
                'location_id' => $dataLokasi->id
            ]);
        }

        Session::flash('success', 'Data berhasil diupdate');

        return redirect()->back()->withInput();
    }

    public function destroy(Period $periode)
    {
        // hapus lokasi tersedia
        $locationAvailable = locationAvailable::wherePeriodId($periode->id)->delete();

        // hapus periode
        if ($locationAvailable) {
            $periode->delete();
        }

        Session::flash('success', 'Data berhasil dihapus');

        return redirect()->back()->withInput();
    }

    public function setStatus(Period $periode)
    {
        if ($periode->is_active) {
            $status = 0;
            $message = $periode->nama_periode." tidak aktif";
        } else {
            $status = 1;
            $message = $periode->nama_periode." aktif";
        }

        // update status periode
        $periode->update([
            'is_active' => $status
        ]);

        // update status periode lain
        if ($status == 1) {
            Period::whereNot('id', $periode->id)
                ->update([
                    'is_active' => 0
                ]);
        }

        Session::flash('success', $message);

        return redirect()->back()->withInput();
    }
}
