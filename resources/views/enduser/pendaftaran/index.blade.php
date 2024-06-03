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
                    <h1><i class="bi bi-pin-map-fill fs-2 text-dark me-2"></i> Titik Lokasi {{ $dates[0]->lokasi->name }}
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
                <h1><i class="bi bi-pin-map-fill fs-2 text-dark me-2"></i> Titik Lokasi {{ $dates[0]->lokasi->name }}
                </h1>
            </div>
        @endif

        <div class="alert alert-primary d-flex justify-content-center align-items-center p-5 mb-8">
            <i class="bi bi-info-circle fs-1 text-primary me-4"></i>
            <div class="d-flex flex-column align-items-center">
                <span>Silahkan pilih tanggal dan sesi yang tersedia</span>
            </div>
        </div>

        <div class="row d-flex justify-content-center">
            @forelse ($dates as $date)
                @php
                    $schedules = \App\Models\Schedule::query()
                        ->with('peserta')
                        ->wherePeriodId($date->period_id)
                        ->whereLocationId($date->location_id)
                        ->where('tanggal', $date->tanggal)
                        ->orderBy('nama_sesi')
                        ->get();
                @endphp
                <div class="col-12 col-md-4 mb-5">
                    <div class="border border-3 border-primary rounded">
                        <div class="text-center bg-primary text-white w-100 p-3">
                            <span class="fs-3 fw-bold">{{ formatTanggalIndonesia($date->tanggal) }}</span>
                        </div>

                        <div class="p-5">
                            @forelse ($schedules as $schedule)
                                <div class="card mb-5 shadow">
                                    @if ($schedule->kuota <= $schedule->peserta->count())
                                        <div class="overlay">
                                            <div
                                                class="d-flex flex-column justify-content-center align-items-center h-100">
                                                <i class="bi bi-ban text-danger" style="font-size:75px;"></i>
                                                <span class="fw-bolder text-danger fs-2hx">Penuh</span>
                                            </div>
                                        </div>
                                    @endif

                                    <div class="card-header d-flex justify-content-center">
                                        <h3 class="card-title fw-bolder">{{ $schedule->nama_sesi }}</h3>
                                    </div>
                                    <div class="card-body text-center">
                                        <div class="d-flex flex-column align-items-center">
                                            <span class="fw-bold"
                                                style="font-size: 75px;">{{ $schedule->kuota - $schedule->peserta->count() }}</span>
                                            <span style="margin-top:-20px;" class="fs-4">Peserta</span>
                                        </div>
                                    </div>
                                    <div class="card-footer d-grid">
                                        <a href="{{ route('pendaftaran.form', ['id' => $schedule->id]) }}" class="btn btn-primary"
                                            {{ $schedule->kuota <= $schedule->peserta->count() ? 'disabled' : '' }}>
                                            <div class="d-flex justify-content-center align-items-center gap-3">
                                                <i class="bi bi-{{ $schedule->kuota <= $schedule->peserta->count() ? 'ban' : 'check-circle' }}"></i>
                                                <span class="indicator-label">
                                                    {{ $schedule->kuota <= $schedule->peserta->count() ? 'Penuh' : 'Pilih' }}
                                                </span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            @empty
                            @endforelse
                        </div>
                    </div>
                </div>
            @empty
            @endforelse
        </div>
    </div>
@endsection