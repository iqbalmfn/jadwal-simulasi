<?php

use App\Http\Controllers\Master\LokasiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('locations-by-period/{period_id}', [LokasiController::class, 'locationByPeriod'])->name('api.location-by-period');
