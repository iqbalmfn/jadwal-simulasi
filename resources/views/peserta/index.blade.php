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
            @forelse ($breadcrumbs as $breadcrumb)
                @if (isset($breadcrumb['link']))
                    <li class="breadcrumb-item text-muted">
                        <a href="{{ $breadcrumb['link'] }}"
                            class="text-muted text-hover-primary">{{ $breadcrumb['name'] }}</a>
                    </li>
                @else
                    <li class="breadcrumb-item text-primary">{{ $breadcrumb['name'] }}</li>
                @endif
            @empty
            @endforelse
        </ul>
        <!--end::Breadcrumb-->
    </div>
@endsection

@section('content')
    <div class="card">
        <!--begin::Card body-->
        <div class="card-body pt-0">
            <!--begin::Table-->
            <table id="kt_datatable_dom_positioning"
                class="table table-striped table-row-bordered gy-3 gs-5 border rounded">
                <thead>
                    <tr class="fw-bold fs-6 text-gray-800 px-7">
                        <th width="5%">No</th>
                        <th>Identitas</th>
                        <th>Kontak</th>
                        <th>Lokasi</th>
                        <th width="10%">Tgl Simulasi</th>
                        <th width="5%">Sesi</th>
                        <th width="14%">Tgl Daftar</th>
                        <th class="text-end">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($datas as $data)
                        <tr class="align-middle">
                            <td>{{ $loop->iteration }}</td>
                            <td>
                                <div class="d-flex flex-column">
                                    <span>NIK : {{ $data->nik }}</span>
                                    <span>Nama : {{ $data->nama_lengkap }}</span>
                                </div>
                            </td>
                            <td>
                                <div class="d-flex flex-column">
                                    <span>Email : {{ $data->email }}</span>
                                    <span>No. HP : {{ $data->no_hp }}</span>
                                    <span>Alamat : {{ $data->alamat }}</span>
                                </div>
                            </td>
                            <td>{{ $data->jadwal->lokasi->name }}</td>
                            <td>{{ formatTanggalIndonesia($data->jadwal->tanggal) }}</td>
                            <td>{{ $data->jadwal->nama_sesi }}</td>
                            <td>{{ formatTanggalIndonesia($data->created_at) }}, {{ date('H:i', strtotime($data->created_at)) }} WIB</td>
                            <td class="text-end">
                                <div class="d-flex justify-content-end gap-2">
                                    <a href="{{ route('pendaftaran.print', ['id' => $data->id]) }}" target="_blank" class="btn btn-sm btn-icon btn-outline btn-outline-primary">
                                        <i class="bi bi-printer"></i></a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <!--end::Table-->
        </div>
        <!--end::Card body-->
    </div>
@endsection

@section('scripts')
    <script src="{{ asset('assets/plugins/custom/datatables/datatables.bundle.js') }}"></script>
    <script>
        $("#kt_datatable_dom_positioning").DataTable({
            "language": {
                "lengthMenu": "Show _MENU_",
            },
            "dom": "<'row mb-2'" +
                "<'col-sm-6 d-flex align-items-center justify-conten-start dt-toolbar'l>" +
                "<'col-sm-6 d-flex align-items-center justify-content-end dt-toolbar'f>" +
                ">" +

                "<'table-responsive'tr>" +

                "<'row'" +
                "<'col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start'i>" +
                "<'col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end'p>" +
                ">"
        });
    </script>

    @if ($errors->any() && old('type') == 'create')
        <script type="text/javascript">
            $(window).on('load', function() {
                $('#create').modal('show');
            });
        </script>
    @endif
@endsection
