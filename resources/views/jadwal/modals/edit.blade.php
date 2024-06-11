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
                        <input type="text" class="form-control" value="{{ $data->periode->nama_periode }}" disabled>
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Lokasi</label>
                        <input type="text" class="form-control" value="{{ $data->lokasi->name }}" disabled>
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
                        <input type="datetime-local" name="tanggal" class="form-control @error('tanggal') is-invalid @enderror" value="{{ $data->tanggal }}" placeholder="Masukkan Tanggal">
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
