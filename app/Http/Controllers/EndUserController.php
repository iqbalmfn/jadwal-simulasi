<?php

namespace App\Http\Controllers;

use App\Models\Period;;
use Illuminate\Http\Request;

class EndUserController extends Controller
{
    public function __invoke()
    {
        $period = Period::query()
            ->whereIsActive(1)
            ->with('location_available.lokasi')
            ->first();

        return view('enduser.index', [
            'period' => $period
        ]);
    }
}
