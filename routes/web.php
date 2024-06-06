<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\EndUserController;
use App\Http\Controllers\JadwalController;
use App\Http\Controllers\Master\LokasiController;
use App\Http\Controllers\Master\PeriodeController;
use App\Http\Controllers\PendaftaranController;
use App\Http\Controllers\PesertaController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', EndUserController::class)->name('enduser.index');
Route::prefix('pendaftaran')->name('pendaftaran.')->group(function () {
    Route::post('/pilih-lokasi', [PendaftaranController::class, 'pilihLokasi'])->name('pilih-lokasi');
    Route::get('/', [PendaftaranController::class, 'index'])->name('index');
    Route::post('/', [PendaftaranController::class, 'store'])->name('store');
    Route::get('{id}', [PendaftaranController::class, 'form'])->name('form');
    Route::get('/success/{id}', [PendaftaranController::class, 'success'])->name('success');
    Route::get('/print/{id}', [PendaftaranController::class, 'print'])->name('print');
});
Route::get('verifikasi/{id}', [PendaftaranController::class, 'verifikasi'])->name('verifikasi.index');

Route::prefix('admin')->name('admin.')->middleware('auth')->group(function () {
    Route::get('/', DashboardController::class)->name('index');

    Route::prefix('master')->name('master.')->group(function () {
        Route::resource('lokasi', LokasiController::class)->only(['index', 'store', 'update', 'destroy']);
        Route::resource('periode', PeriodeController::class)->only(['index', 'store', 'update', 'destroy']);
        Route::get('periode/{periode}/status', [PeriodeController::class, 'setStatus'])->name('periode.set-status');
    });
    
    Route::resource('jadwal', JadwalController::class)->only(['index', 'store', 'update', 'destroy']);
    Route::resource('peserta', PesertaController::class)->only(['index']);
});

require __DIR__.'/auth.php';
