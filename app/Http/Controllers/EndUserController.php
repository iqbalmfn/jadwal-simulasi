<?php

namespace App\Http\Controllers;

use App\Models\Biodata;
use App\Models\Period;;

use Illuminate\Http\Request;

class EndUserController extends Controller
{
    public function __invoke()
    {
        // return date('Y-m-d H:i:s', strtotime(now()));
        $period = Period::query()
            ->whereIsActive(1)
            ->with('location_available.lokasi.jadwal')
            ->first();

        $totalKuota = 0;
        $totalPeserta = 0;

        if ($period) {
            // Lakukan perhitungan total kuota dari semua jadwal
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
        }

        // baca data apakah sudah mendaftar atau belum
        $peserta = Biodata::query()
            ->whereId(session('id'))
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
