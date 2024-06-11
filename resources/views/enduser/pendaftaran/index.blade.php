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
                        {{ $lokasi->name }}
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
                <h1><i class="bi bi-pin-map-fill fs-2 text-dark me-2"></i> Titik Lokasi
                    {{ $lokasi->name }}
                </h1>
            </div>
        @endif

        @if ($dates->count() >= 1)
            <div class="alert alert-primary d-flex justify-content-center align-items-center p-5 mb-8">
                <i class="bi bi-info-circle fs-1 text-primary me-4"></i>
                <div class="d-flex flex-column align-items-center">
                    <span>Silahkan pilih tanggal dan sesi yang tersedia</span>
                </div>
            </div>
        @endif

        <div class="row d-flex justify-content-center">
            @if ($period->tipe_grid == 'vertical')
                @include('enduser.pendaftaran.partials.grid-vertical')
            @else
                @include('enduser.pendaftaran.partials.grid-horizontal')
            @endif
        </div>

        <div class="d-flex justify-content-center px-lg-10 mt-20">
            <p>2024 &copy; made with ❤️ by <a href="http://kanreg3.id" target="_blank">Kanreg III BKN Bandung</a></p>
        </div>
    </div>
@endsection
