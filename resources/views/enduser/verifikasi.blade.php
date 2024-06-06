@php
    use Jenssegers\Agent\Agent;
    $agent = new Agent();
@endphp

@extends('layouts.app-enduser')

@section('content')
    <div class="bg-body d-flex flex-column align-items-stretch flex-center rounded-4 w-md-50 p-10">
        <div class="d-flex justify-content-center align-items-center">
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

        <div class="card border-primary">
            <div class="card-header d-flex justify-content-center bg-primary">
                <h3 class="card-title fw-bolder text-white fs-1">Verifikasi Data Registrasi</h3>
            </div>
            <div class="card-body fs-5 text-start">
                <table class="table table-sm table-striped table-bordered">
                    <tr>
                        <th width="30%">NIK</th>
                        <td>{{ $data->nik }}</td>
                    </tr>
                    <tr>
                        <th>Nama Lengkap</th>
                        <td>{{ $data->nama_lengkap }}</td>
                    </tr>
                    <tr>
                        <th>Alamat Lengkap</th>
                        <td>{{ $data->alamat }}</td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>{{ $data->email }}</td>
                    </tr>
                    <tr>
                        <th>No. Handphone</th>
                        <td>{{ $data->no_hp }}</td>
                    </tr>
                    <tr>
                        <th>Titik Lokasi</th>
                        <td>{{ $data->jadwal->lokasi->name }}</td>
                    </tr>
                    <tr>
                        <th>Tanggal Tes</th>
                        <td>{{ formatTanggalIndonesia($data->jadwal->tanggal) }}</td>
                    </tr>
                    <tr>
                        <th>Sesi</th>
                        <td>{{ $data->jadwal->nama_sesi }} - {{ date('H:i', strtotime($data->jadwal->tanggal)) }} WIB</td>
                    </tr>
                    <tr>
                        <th>Tanggal Registrasi</th>
                        <td>{{ formatTanggalIndonesia($data->created_at) }}</td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td><span class="badge badge-success"><i class="bi bi-patch-check me-2 text-white"></i> Terdaftar</span></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="d-flex justify-content-center px-lg-10 mt-20">
            <p>2024 &copy; made with ❤️ by <a href="http://kanreg3.id" target="_blank">Kanreg III BKN Bandung</a></p>
        </div>
    </div>
@endsection
