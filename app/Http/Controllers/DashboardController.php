<?php

namespace App\Http\Controllers;

use App\Models\Period;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function __invoke(Request $request)
    {
        // baca periode aktif
        $datas = Period::query()
            ->where('is_active', 1)
            ->with([
                'location_available.lokasi.jadwal' => function ($query) {
                    $query->orderBy('nama_sesi');
                    $query->select('schedules.*', DB::raw('DATE_FORMAT(tanggal, "%Y-%m-%d") as formatted_date'))
                    ->groupBy('location_id', DB::raw('DATE_FORMAT(tanggal, "%Y-%m-%d")'))
                    ->orderBy('nama_sesi');
                }
            ])
            ->first();

        return view('dashboard', [
            'title' => 'Dashboard',
            'datas' => $datas
        ]);
    }
}
