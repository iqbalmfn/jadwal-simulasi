@php
    use Jenssegers\Agent\Agent;
    $agent = new Agent();
@endphp

@extends('layouts.app')

@section('title')
    {{ $title }}
@endsection

@section('toolbar')
    <div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
        <!--begin::Title-->
        <h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">{{ $title }}
        </h1>
        <!--end::Title-->
        <!--begin::Breadcrumb-->
        <ul class="breadcrumb breadcrumb-dot fw-semibold fs-7 my-0 pt-1">
            <!--begin::Item-->
            <li class="breadcrumb-item text-muted">
                <a href="{{ route('admin.index') }}" class="text-muted text-hover-primary"><i class="bi bi-house"></i></a>
            </li>
            <!--end::Item-->

            <!--begin::Item-->
            <li class="breadcrumb-item text-muted">Dashboards</li>
            <!--end::Item-->
        </ul>
        <!--end::Breadcrumb-->
    </div>
@endsection

@section('content')
    <!--begin::Row-->
    <div class="card h-md-100">
        <div class="card-header position-relative py-0 border-bottom-1">
            <h3 class="card-title text-gray-800 fw-bold">{{ $datas->nama_periode }}</h3>
            <ul class="nav nav-stretch nav-pills nav-pills-custom d-flex mt-4">
                @forelse ($datas->location_available as $locAvail)
                    <li class="nav-item p-0 ms-0">
                        <a class="nav-link btn btn-color-gray-400 flex-center px-3 {{ $loop->iteration == 1 ? 'active' : '' }}"
                            data-bs-toggle="tab" href="#{{ $locAvail->id }}">
                            <span class="nav-text fw-semibold fs-4 mb-3">{{ $locAvail->lokasi->name }}</span>
                            <span
                                class="bullet-custom position-absolute z-index-2 w-100 h-1px top-100 bottom-n100 bg-primary rounded"></span>
                        </a>
                    </li>
                @empty
                @endforelse
            </ul>
        </div>
        <div class="card-body pb-0">
            <div class="tab-content">
                @forelse ($datas->location_available as $locAvail)
                    <div class="tab-pane {{ $loop->iteration == 1 ? 'active' : '' }}" id="{{ $locAvail->id }}"
                        role="tabpanel" aria-labelledby="day-tab">
                        <div class="table-responsive pb-10">
                            @forelse ($locAvail->lokasi->jadwal as $jadwal)
                                @php
                                    $schedules = \App\Models\Schedule::query()
                                        ->with('peserta')
                                        ->wherePeriodId($jadwal->period_id)
                                        ->whereLocationId($jadwal->location_id)
                                        ->where('tanggal', 'like', '%'.date('Y-m-d', strtotime($jadwal->tanggal)).'%')
                                        ->orderBy('nama_sesi')
                                        ->get();
                                @endphp
                                <div class="row">
                                    <div class="col-12 mb-5">
                                        <div class="border border-3 border-primary rounded">
                                            <div class="text-center bg-primary text-white w-100 p-3">
                                                <span
                                                    class="fs-3 fw-bold">{{ formatTanggalIndonesia($jadwal->tanggal) }}</span>
                                            </div>

                                            <div class="p-5">
                                                <div class="row">
                                                    @forelse ($schedules as $schedule)
                                                        <div class="col-12 col-md-3">
                                                            <div class="card shadow bg-g">
                                                                <div class="card-header d-flex justify-content-center">
                                                                    <h3 class="card-title fw-bolder">
                                                                        {{ $schedule->nama_sesi }}</h3>
                                                                </div>
                                                                <div class="card-body text-center p-5">
                                                                    <div class="d-flex flex-column align-items-center">
                                                                        <div class="fw-bold d-flex flex-column gap-0"
                                                                            style="font-size: 65px;">
                                                                            {{ $schedule->peserta->count() . '/' . $schedule->kuota }}
                                                                            <span style="margin-top:-10px;"
                                                                                class="fs-4">Peserta</span>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="card-footer d-grid">
                                                                    <span
                                                                        class="btn {{ $schedule->kuota <= $schedule->peserta->count() ? 'btn-danger' : 'btn-primary' }}"
                                                                        {{ $schedule->kuota <= $schedule->peserta->count() ? 'disabled' : '' }}>
                                                                        <div
                                                                            class="d-flex justify-content-center align-items-center gap-3">
                                                                            <i
                                                                                class="bi bi-{{ $schedule->kuota <= $schedule->peserta->count() ? 'x-lg' : 'check-circle' }}"></i>
                                                                            <span class="indicator-label">
                                                                                {{ $schedule->kuota <= $schedule->peserta->count() ? 'Penuh' : 'Tersedia' }}
                                                                            </span>
                                                                        </div>
                                                                        </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    @empty
                                                    @endforelse
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <div
                                    class="alert alert-dismissible bg-light-danger d-flex flex-center flex-column py-10 px-10 px-lg-20">
                                    <!--begin::Icon-->
                                    <i class="ki-duotone ki-information-5 fs-5tx text-danger mb-5"><span
                                            class="path1"></span><span class="path2"></span><span
                                            class="path3"></span></i>
                                    <!--end::Icon-->

                                    <!--begin::Wrapper-->
                                    <div class="text-center">
                                        <!--begin::Title-->
                                        <h1 class="fw-bold mb-5 text-danger">Belum tersedia</h1>
                                        <!--end::Title-->

                                        <!--begin::Separator-->
                                        <div class="separator separator-dashed border-danger opacity-25 mb-5"></div>
                                        <!--end::Separator-->

                                        <!--begin::Content-->
                                        <div class="mb-9 text-gray-900">
                                            Belum ada jadwal simulasi CAT yang tersedia.
                                        </div>
                                        <!--end::Content-->

                                        <!--begin::Buttons-->
                                        <div class="d-flex flex-center flex-wrap">
                                            <a href="{{ route('admin.jadwal.index') }}" class="btn btn-danger m-2">Tambah Jadwal</a>
                                        </div>
                                        <!--end::Buttons-->
                                    </div>
                                    <!--end::Wrapper-->
                                </div>
                            @endforelse
                        </div>
                    </div>
                @empty
                @endif
            </div>
            <!--end::Tab content-->
        </div>
        <!--end::Card body-->
    </div>
    {{-- <div class="d-flex justify-content-center border border-gray-500 rounded p-10">
        <h1>Selamat datang di Aplikasi Jadwal Simulasi CAT Kanreg III BKN Bandung</h1>
    </div> --}}
    <!--end::Row-->
@endsection
