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
                    <h1><i class="bi bi-pin-map-fill fs-2 text-dark me-2"></i> Titik Lokasi {{ $schedule->lokasi->name }}
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
                <h1><i class="bi bi-pin-map-fill fs-2 text-dark me-2"></i> Titik Lokasi {{ $schedule->lokasi->name }}
                </h1>
            </div>
        @endif

        <div class="border border-primary rounded p-5">
            <div class="row">
                <div class="col-12 col-md-4 mb-5">
                    <div class="border-bottom border-primary mb-5">
                        <h4>Data Sesi</h4>
                    </div>
                    <div class="text-start">
                        <table class="table table-sm table-striped table-bordered">
                            <tr>
                                <th>Titik Lokasi</th>
                                <td>{{ $schedule->lokasi->name }}</td>
                            </tr>
                            <tr>
                                <th>Tanggal Tes</th>
                                <td>{{ formatTanggalIndonesia($schedule->tanggal) }}</td>
                            </tr>
                            <tr>
                                <th>Sesi</th>
                                <td>{{ $schedule->nama_sesi }}</td>
                            </tr>
                            <tr>
                                <th>Kuota Peserta</th>
                                <td>{{ $schedule->kuota }} peserta</td>
                            </tr>
                            <tr>
                                <th>Jumlah Pendaftar</th>
                                <td>{{ $schedule->peserta->count() }} peserta</td>
                            </tr>
                            <tr>
                                <th>Status</th>
                                <td>
                                    @if ($schedule->kuota <= $schedule->peserta->count())
                                        <span class="badge badge-danger">Penuh</span>
                                    @else
                                        <span class="badge badge-success">Tersedia</span>
                                    @endif
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-12 col-md-8">
                    <div class="border-bottom border-primary mb-5">
                        <h4>Formulir Pendaftaran</h4>
                    </div>
                    <div class="text-start">
                        @if ($schedule->kuota <= $schedule->peserta->count())
                            <!--begin::Alert-->
                            <div
                                class="alert alert-dismissible bg-light-danger d-flex flex-center flex-column py-10 px-10 px-lg-20 mb-10">
                                <!--begin::Icon-->
                                <i class="ki-duotone ki-information-5 fs-5tx text-danger mb-5"><span
                                        class="path1"></span><span class="path2"></span><span class="path3"></span></i>
                                <!--end::Icon-->

                                <!--begin::Wrapper-->
                                <div class="text-center">
                                    <!--begin::Title-->
                                    <h1 class="fw-bold mb-5 text-danger">Peserta sudah penuh</h1>
                                    <!--end::Title-->

                                    <!--begin::Separator-->
                                    <div class="separator separator-dashed border-danger opacity-25 mb-5"></div>
                                    <!--end::Separator-->

                                    <!--begin::Content-->
                                    <div class="mb-9 text-gray-900">
                                        Maaf, jadwal yang Anda pilih sudah tidak tersedia. Silahkan kembali ke halaman penjadwalan.
                                    </div>
                                    <!--end::Content-->

                                    <!--begin::Buttons-->
                                    <div class="d-flex flex-center flex-wrap">
                                        <a href="{{ route('pendaftaran.index') }}" class="btn btn-danger m-2">Penjadwalan</a>
                                    </div>
                                    <!--end::Buttons-->
                                </div>
                                <!--end::Wrapper-->
                            </div>
                            <!--end::Alert-->
                        @else
                            <form method="POST" action="{{ route('pendaftaran.store') }}">
                                @csrf
                                <input type="hidden" name="schedule_id" value="{{ $schedule->id }}">
                                <div class="mb-5">
                                    <label class="form-label required">No. Induk Kependudukan (NIK)</label>
                                    <input type="number" name="nik"
                                        class="form-control @error('nik') is-invalid @enderror" placeholder="Masukkan NIK"
                                        value="{{ old('nik') }}" required />
                                    @error('nik')
                                        <small class="invalid-feedback fs-8">
                                            {{ $message }}
                                        </small>
                                    @enderror
                                </div>
                                <div class="mb-5">
                                    <label class="form-label required">Nama Lengkap</label>
                                    <input type="text" name="nama_lengkap"
                                        class="form-control @error('nama_lengkap') is-invalid @enderror"
                                        placeholder="Masukkan Nama Lengkap" value="{{ old('nama_lengkap') }}" required />
                                    @error('nama_lengkap')
                                        <small class="invalid-feedback fs-8">
                                            {{ $message }}
                                        </small>
                                    @enderror
                                </div>
                                <div class="mb-5">
                                    <label class="form-label required">Alamat Lengkap</label>
                                    <textarea name="alamat" class="form-control @error('alamat') is-invalid @enderror" rows="3"
                                        placeholder="Tulis Alamat Lengkap..." required>{{ old('alamat') }}</textarea>
                                    @error('nama_lengkap')
                                        <small class="invalid-feedback fs-8">
                                            {{ $message }}
                                        </small>
                                    @enderror
                                </div>
                                <div class="mb-5">
                                    <label class="form-label required">Email</label>
                                    <input type="email" name="email"
                                        class="form-control @error('email') is-invalid @enderror"
                                        placeholder="Masukkan Email" value="{{ old('email') }}" required />
                                    @error('email')
                                        <small class="invalid-feedback fs-8">
                                            {{ $message }}
                                        </small>
                                    @enderror
                                </div>
                                <div class="mb-10">
                                    <label class="form-label required">No. Handphone</label>
                                    <input type="text" name="no_hp"
                                        class="form-control @error('no_hp') is-invalid @enderror"
                                        placeholder="Masukkan No. Handphone" value="{{ old('no_hp') }}" required />
                                    @error('no_hp')
                                        <small class="invalid-feedback fs-8">
                                            {{ $message }}
                                        </small>
                                    @enderror
                                </div>
                                <div class="d-flex justify-content-between gap-2">
                                    <div>
                                        <a href="{{ route('pendaftaran.index') }}" class="btn btn-danger"><i
                                                class="bi bi-arrow-left me-1"></i>
                                            Kembali</a>
                                    </div>
                                    <div class="d-flex gap-2">
                                        @if (!$agent->isMobile())
                                            <button type="reset" class="btn btn-light" data-bs-dismiss="modal"><i
                                                    class="bi bi-arrow-clockwise me-1"></i>
                                                Reset</button>
                                        @endif
                                        <button type="submit" class="btn btn-primary"><i class="bi bi-send me-1"></i>
                                            Daftar</button>
                                    </div>
                                </div>
                            </form>
                        @endif
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
