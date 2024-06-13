<?php

namespace App\Http\Controllers;

use App\Exports\PesertaExport;
use App\Models\Biodata;
use App\Models\Period;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Maatwebsite\Excel\Facades\Excel;

class PesertaController extends Controller
{
    public function index(Request $request)
    {
        $breadcrumbs = [
            ['name' => "Master", "link" => "#"],
            ['name' => "Lokasi"],
        ];

        $periods = Period::all();

        // cek periode aktif
        $period = Period::query()
            ->whereIsActive(1)
            ->first();

        $query = Biodata::query();
        if ($request->period_id) {
            $query->whereHas('jadwal', function ($q) use ($request) {
                $q->wherePeriodId($request->period_id);
            });
        } else {
            $query->whereHas('jadwal', function ($q) use ($period) {
                $q->wherePeriodId($period->id);
            });
        }
        $datas = $query->orderByDesc('created_at')->get();

        return view('peserta.index', [
            'title' => 'Peserta',
            'breadcrumbs' => $breadcrumbs,
            'datas' => $datas,
            'periods' => $periods,
            'request' => $request
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

    public function print(Request $request)
    {
        // cek periode aktif
        $period = Period::query()
            ->whereIsActive(1)
            ->first();

        $query = Biodata::query();
        if ($request->period_id) {
            $query->whereHas('jadwal', function ($q) use ($request) {
                $q->wherePeriodId($request->period_id);
            });
        } else {
            $query->whereHas('jadwal', function ($q) use ($period) {
                $q->wherePeriodId($period->id);
            });
        }
        $datas = $query->with('jadwal.lokasi')
            ->orderByDesc('created_at')
            ->get();

        return Excel::download(new PesertaExport($datas), 'rekap_peserta_simulasi_cat.xlsx');
    }
}
