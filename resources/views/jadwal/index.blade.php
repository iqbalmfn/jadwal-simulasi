@extends('layouts.app')

@section('title')
    {{ $title }}
@endsection

@section('toolbar')
    <div class="page-title d-flex flex-column justify-content-center flex-wrap me-3">
        <h1 class="page-heading d-flex text-dark fw-bold fs-3 flex-column justify-content-center my-0">{{ $title }}
        </h1>
        <ul class="breadcrumb breadcrumb-dot fw-semibold fs-7 my-0 pt-1">
            <li class="breadcrumb-item text-muted">
                <a href="{{ route('admin.index') }}" class="text-muted text-hover-primary"><i class="bi bi-house"></i></a>
            </li>
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
    </div>
@endsection

@section('content')
    <div class="card">
        <div class="card-header border-0 pt-6">
            <div class="card-toolbar">
                <div class="d-flex justify-content-end" data-kt-customer-table-toolbar="base">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#create"><i
                            class="bi bi-plus-lg"></i> Tambah</button>
                </div>
            </div>
        </div>
        <div class="card-body pt-0">
            <table id="kt_datatable_dom_positioning"
                class="table table-striped table-row-bordered gy-3 gs-5 border rounded">
                <thead>
                    <tr class="fw-bold fs-6 text-gray-800 px-7">
                        <th width="5%">No</th>
                        <th>Nama Periode</th>
                        <th>Nama Lokasi</th>
                        <th>Nama Sesi</th>
                        <th>Tanggal</th>
                        <th>Jam</th>
                        <th width="7%">Kuota</th>
                        <th class="text-end">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($datas as $data)
                        <tr class="align-middle">
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $data->periode->nama_periode }}</td>
                            <td>{{ $data->lokasi->name }}</td>
                            <td>{{ $data->nama_sesi }}</td>
                            <td>{{ formatTanggalIndonesia($data->tanggal) }}</td>
                            <td>{{ date('H:i', strtotime($data->tanggal)) }} WIB</td>
                            <td>{{ $data->kuota }} peserta</td>
                            <td class="text-end">
                                <div class="d-flex justify-content-end gap-2">
                                    <a href="#" class="btn btn-sm btn-icon btn-outline btn-outline-primary"
                                        data-bs-toggle="modal" data-bs-target="#edit-{{ $data->id }}"><i
                                            class="bi bi-pencil"></i></a>
                                    <a href="#" class="btn btn-sm btn-icon btn-outline btn-outline-danger"
                                        data-bs-toggle="modal" data-bs-target="#delete-{{ $data->id }}"><i
                                            class="bi bi-trash"></i></a>
                                </div>
                            </td>
                        </tr>

                        @include('jadwal.modals.edit')
                        @include('jadwal.modals.delete')
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    @include('jadwal.modals.create')
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

    <script>
        document.getElementById('period-select').addEventListener('change', function() {
            var periodId = this.value;
            if (periodId) {
                fetch(`/api/locations-by-period/${periodId}`)
                    .then(response => response.json())
                    .then(data => {
                        var locationSelect = document.getElementById('location-select');
                        locationSelect.innerHTML =
                            '<option value="" selected disabled>-- Pilih Lokasi --</option>';
                        data.forEach(location => {
                            var option = document.createElement('option');
                            option.value = location.id;
                            option.textContent = location.name;
                            locationSelect.appendChild(option);
                        });
                    });
            }
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
