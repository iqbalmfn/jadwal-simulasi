<div class="modal fade" tabindex="-1" id="edit-{{ $data->id }}">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Edit {{ $title }}</h3>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                </div>
                <!--end::Close-->
            </div>

            <form method="POST" action="{{ route('admin.jadwal.update', ['jadwal' => $data->id]) }}">
                <div class="modal-body">
                    @csrf
                    <input type="hidden" name="_method" value="PUT">
                    <input type="hidden" name="type" value="edit-{{ $data->id }}">
                    <div class="mb-8">
                        <label class="form-label">Periode</label>
                        <input type="hidden" name="period_id" class="form-control" value="{{ $period->id }}">
                        <input type="text" class="form-control" value="{{ $period->nama_periode }}" disabled>
                        @error('period_id')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Lokasi</label>
                        <select type="text" name="location_id"
                            class="form-control @error('location_id') is-invalid @enderror"
                            placeholder="Masukkan Nama Lokasi" required>
                            <option value="" selected disabled>-- Pilih Lokasi --</option>
                            @foreach ($period->location_available as $location)
                                <option value="{{ $location->location_id }}" {{ $data->location_id == $location->location_id ? 'selected' : '' }}>{{ $location->lokasi->name }}</option>
                            @endforeach
                        </select>
                        @error('location_id')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Nama Sesi</label>
                        <input type="text" name="nama_sesi" class="form-control @error('nama_sesi') is-invalid @enderror" value="{{ $data->nama_sesi }}" placeholder="Masukkan Nama Sesi">
                        @error('nama_sesi')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Tanggal</label>
                        <input type="date" name="tanggal" class="form-control @error('tanggal') is-invalid @enderror" value="{{ $data->tanggal }}" placeholder="Masukkan Tanggal">
                        @error('tanggal')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Kuota Peserta</label>
                        <input type="number" name="kuota" class="form-control @error('kuota') is-invalid @enderror" value="{{ $data->kuota }}" placeholder="Masukkan Kuota Peserta">
                        @error('kuota')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-bs-dismiss="modal"><i class="bi bi-x-lg me-1"></i>
                        Batal</button>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-save me-1"></i> Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
