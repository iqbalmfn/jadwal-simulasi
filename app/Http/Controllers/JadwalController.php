<?php

namespace App\Http\Controllers;

use App\Models\Period;
use App\Models\Schedule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rule;

class JadwalController extends Controller
{
    public function index()
    {
        $breadcrumbs = [
            ['name' => "Jadwal Simulasi"],
        ];

        $datas = Schedule::query()
            ->with(['periode', 'lokasi'])
            ->orderByDesc('id')
            ->get();

        $period = Period::query()
            ->whereIsActive(1)
            ->with('location_available.lokasi')
            ->first();

        return view('jadwal.index', [
            'title' => 'Jadwal Simulasi',
            'breadcrumbs' => $breadcrumbs,
            'datas' => $datas,
            'period' => $period
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'period_id'     => 'required|numeric',
            'location_id'   => 'required|numeric',
            'nama_sesi'   => [
                'required',
                Rule::unique('schedules')->where(function ($query) use ($request) {
                    return $query->where('period_id', $request->period_id)
                        ->where('tanggal', $request->tanggal)
                        ->where('location_id', $request->location_id);
                })
            ],
            'tanggal'       => 'required|date',
            'kuota'         => 'required|numeric',
        ]);

        $input = $request->all();

        Schedule::create($input);

        return redirect()->back();
    }

    public function update(Request $request, Schedule $jadwal)
    {
        $request->validate([
            'period_id'     => 'required|numeric',
            'location_id'   => 'required|numeric',
            'nama_sesi'   => [
                'required',
                Rule::unique('schedules')->where(function ($query) use ($request) {
                    return $query->where('period_id', $request->period_id)
                        ->where('tanggal', $request->tanggal)
                        ->where('location_id', $request->location_id);
                })
            ],
            'tanggal'       => 'required|date',
            'kuota'         => 'required|numeric',
        ]);

        $input = $request->all();

        $jadwal->update($input);

        Session::flash('success', 'Data berhasil diupdate');

        return redirect()->back()->withInput();
    }

    public function destroy(Schedule $jadwal)
    {
        $jadwal->delete();

        Session::flash('success', 'Data berhasil dihapus');

        return redirect()->back()->withInput();
    }
}
