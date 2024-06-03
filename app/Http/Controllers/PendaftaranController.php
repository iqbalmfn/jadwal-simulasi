<?php

namespace App\Http\Controllers;

use App\Models\Period;
use App\Models\Schedule;
use Illuminate\Http\Request;

class PendaftaranController extends Controller
{
    public function pilihLokasi(Request $request)
    {
        // cek periode aktif
        $checkPeriod = Period::query()
            ->whereId($request->period_id)
            ->whereIsActive(1)
            ->first();

        if (!$checkPeriod) {
            return redirect()->back();
        } else {
            session(['period_id' => $request->period_id]);
            session(['location_id' => $request->location_id]);

            return redirect()->route('pendaftaran.index');
        }
    }

    public function index()
    {
        $session = [
            'period_id' => session('period_id'),
            'location_id' => session('location_id')
        ];

        if (!isset($session['period_id']) && !isset($session['location_id'])) {
            return redirect()->route('enduser.index');
        } else {
            $dates = Schedule::query()
                ->whereHas('periode', function ($query) use ($session) {
                    $query->where('id', $session['period_id']);
                })
                ->with('periode')
                ->where('location_id', $session['location_id'])
                ->groupBy('tanggal')
                ->orderBy('tanggal')
                ->get();
    
            return view('enduser.pendaftaran.index', [
                'dates' => $dates
            ]);
        }

    }
}
