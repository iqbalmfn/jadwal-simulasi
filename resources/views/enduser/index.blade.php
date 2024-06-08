@extends('layouts.app-enduser-index')

@section('content')
    <div class="bg-body d-flex flex-column align-items-stretch flex-center rounded-4 w-md-600px p-20">
        <div class="row mb-20 px-lg-10 ">
            <div class="col-12 col-md-6 d-flex align-items-center">
                <img src="{{ asset('assets/images/KANREG3-BKN-1-768x204.png') }}" alt="logo BKN" class="w-100">
            </div>
            <div class="col-12 col-md-6 d-flex align-items-center">
                <img src="{{ asset('assets/images/Logo_berakhlak_bangga-1024x390.png') }}" alt="logo Berakhlak" class="w-100">
            </div>
        </div>
        <div class="d-flex flex-center flex-column flex-column-fluid px-lg-10 pb-15 pb-lg-20">
            @if ($period)
                <form class="form w-100" method="POST" action="{{ route('pendaftaran.pilih-lokasi') }}">
                    @csrf
                    <input type="hidden" name="period_id" value="{{ $period->id }}">

                    @error('username')
                        <div class="alert alert-danger d-flex align-items-center p-5 mb-8">
                            <i class="bi bi-exclamation-octagon fs-1 text-danger me-4"></i>
                            <div class="d-flex flex-column align-items-start">
                                <h4 class="mb-1 text-danger">Gagal Login</h4>
                                <span>Username atau password tidak sesuai!</span>
                            </div>
                        </div>
                    @enderror

                    <div class="text-center mb-11">
                        <h1 class="text-dark fw-bolder mb-3">Aplikasi Jadwal Simulasi</h1>
                    </div>

                    @if ($totalKuota <= $totalPeserta)
                        <div class="alert alert-danger d-flex align-items-center p-5 mb-8">
                            <i class="bi bi-exclamation-octagon fs-1 text-danger me-4"></i>
                            <div class="d-flex flex-column align-items-start">
                                <h4 class="mb-1 text-danger">Tidak Tersedia</h4>
                                <span>Kuota telah terpenuhi</span>
                            </div>
                        </div>
                    @endif

                    <div class="fv-row mb-8">
                        <select type="text" name="location_id"
                            class="form-control @error('location_id') is-invalid @enderror"
                            placeholder="Masukkan Nama Lokasi" value="{{ old('location_id') }}" required
                            {{ $totalKuota <= $totalPeserta ? 'disabled' : '' }}>
                            <option value="" selected disabled>-- Pilih Lokasi Simulasi --</option>
                            @foreach ($period->location_available as $location)
                                <option value="{{ $location->location_id }}">{{ $location->lokasi->name }}</option>
                            @endforeach
                        </select>
                        @error('location_id')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>

                    <div class="d-grid mb-10">
                        <button type="submit" id="kt_sign_in_submit" class="btn btn-primary"
                            {{ $totalKuota <= $totalPeserta ? 'disabled' : '' }}>
                            <span class="indicator-label">Daftar</span>
                        </button>
                    </div>
                </form>
            @else
                <div class="text-center mb-11">
                    <h1 class="text-dark fw-bolder mb-3">Aplikasi Jadwal Simulasi</h1>
                </div>
                <div class="alert alert-danger d-flex align-items-center p-5 mb-8 w-100">
                    <i class="bi bi-ban fs-1 text-danger me-4"></i>
                    <div class="d-flex align-items-start flex-column">
                        <h4 class="mb-1 text-danger">Forbidden</h4>
                        <span>Fitur pendaftaran tidak tersedia!</span>
                    </div>
                </div>
            @endif
        </div>
        <div class="d-flex justify-content-center px-lg-10">
            <p>2024 &copy; made with ❤️ by <a href="http://kanreg3.id" target="_blank">Kanreg III BKN Bandung</a></p>
        </div>
    </div>
@endsection
