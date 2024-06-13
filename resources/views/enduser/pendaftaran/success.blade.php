@php
    use Jenssegers\Agent\Agent;
    $agent = new Agent();
@endphp

@extends('layouts.app-enduser')

@section('content')
    <div class="bg-body d-flex flex-column align-items-stretch flex-center rounded-4 w-md-75 p-10">
        <div class="d-flex justify-content-between align-items-center">
            @if (!$agent->isMobile())
                <div>
                    <h1><i class="bi bi-pin-map-fill fs-2 text-dark me-2"></i> Titik Lokasi
                        {{ $data->jadwal->lokasi->name }}
                    </h1>
                </div>
            @endif
            <div class="row mb-5 px-lg-10 ">
                <div
                    class="col-12 col-md-6 d-flex {{ $agent->isMobile() ? 'justify-content-center' : 'justify-content-end' }} align-items-center">
                    <img src="{{ asset('assets/images/KANREG3-BKN-1-768x204.png') }}" alt="logo BKN" class="w-250px">
                </div>
                <div
                    class="col-12 col-md-6 d-flex {{ $agent->isMobile() ? 'justify-content-center' : 'justify-content-start' }} align-items-center">
                    <img src="{{ asset('assets/images/Logo_berakhlak_bangga-1024x390.png') }}" alt="logo Berakhlak"
                        class="w-250px">
                </div>
            </div>
        </div>

        @if ($agent->isMobile())
            <div class="mb-5">
                <h1><i class="bi bi-pin-map-fill fs-2 text-dark me-2"></i> Titik Lokasi {{ $data->jadwal->lokasi->name }}
                </h1>
            </div>
        @endif

        <div class="card border-primary">
            <div class="card-header d-flex justify-content-center bg-primary">
                <h3 class="card-title fw-bolder text-white fs-1">Berhasil Daftar</h3>
            </div>
            <div class="card-body fs-2">
                <p>Selamat <strong>{{ $data->nama_lengkap }}</strong>, Anda berhasil menjadi peserta simulasi</p>
                <p>Jadwal Anda tanggal <strong>{{ formatTanggalIndonesia($data->jadwal->tanggal) }}</strong> pada
                    <strong>{{ $data->jadwal->nama_sesi }}</strong> pukul <strong>{{ date('H:i', strtotime($data->jadwal->tanggal)) }} WIB</strong>
                </p>
            </div>
            <div class="card-footer d-flex justify-content-evenly gap-2">
                <a href="{{ route('pendaftaran.print', ['id' => $data->id]) }}" target="_blank" class="btn btn-primary w-150px"><i class="bi bi-printer me-1"></i>
                    Cetak Kartu</a>
                <a href="{{ route('pendaftaran.clear') }}" class="btn btn-danger w-150px"><i class="bi bi-x-lg me-1"></i>
                    Keluar</a>
            </div>
        </div>
    </div>
@endsection
