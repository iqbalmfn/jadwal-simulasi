<?php

namespace App\Http\Controllers;

use App\Models\Biodata;
use App\Models\Period;;

use Illuminate\Http\Request;

class EndUserController extends Controller
{
    public function __invoke()
    {
        $period = Period::query()
            ->whereIsActive(1)
            ->with('location_available.lokasi.jadwal')
            ->first();

        // Lakukan perhitungan total kuota dari semua jadwal
        $totalKuota = 0;
        foreach ($period->location_available as $location) {
            foreach ($location->lokasi->jadwal as $jadwal) {
                $totalKuota += $jadwal->kuota;
            }
        }

        // lakukan perhitungan total pendaftar
        $totalPeserta = Biodata::query()
            ->whereHas('jadwal', function ($query) use ($period) {
                $query->wherePeriodId($period->id);
            })
            ->count();

        // baca IP & periode, apakah sudah mendaftar atau belum
        $peserta = Biodata::query()
            ->whereHas('jadwal', function ($query) use ($period) {
                $query->wherePeriodId(session('period_id'));
            })
            ->orderByDesc('created_at')
            ->first();

        if ($peserta) {
            return redirect()->route('pendaftaran.success', ['id' => $peserta->id]);
        } else {
            return view('enduser.index', [
                'period' => $period,
                'totalKuota' => $totalKuota,
                'totalPeserta' => $totalPeserta,
            ]);
        }

        return view('enduser.index', [
            'period' => $period,
            'totalKuota' => $totalKuota,
            'totalPeserta' => $totalPeserta,
        ]);
    }
}
