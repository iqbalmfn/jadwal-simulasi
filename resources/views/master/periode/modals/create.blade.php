<div class="modal fade" tabindex="-1" id="create">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Tambah {{ $title }}</h3>

                <!--begin::Close-->
                <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                </div>
                <!--end::Close-->
            </div>

            <form method="POST" action="{{ route('admin.master.periode.store') }}">
                <div class="modal-body">
                    @csrf
                    <input type="hidden" name="type" value="create">
                    <div class="mb-8">
                        <label class="form-label required">Nama Periode</label>
                        <input type="text" name="nama_periode" class="form-control @error('nama_periode') is-invalid @enderror"
                            placeholder="Masukkan Nama Periode" value="{{ old('nama_periode') }}" required />
                        @error('nama_periode')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Lokasi Tersedia</label>
                        <input class="form-control" id="kt_tagify" name="lokasi_tersedia" placeholder="Masukkan Lokasi" required/>
                        {{-- <input type="text" name="nama_periode" class="form-control @error('nama_periode') is-invalid @enderror"
                            placeholder="Masukkan Nama Periode" value="{{ old('nama_periode') }}" required /> --}}
                        @error('lokasi_tersedia')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div>
                        <label class="form-label">Status Aktif</label>
                        <div class="form-check form-switch form-check-custom form-check-solid">
                            <input class="form-check-input" type="checkbox" name="is_active" value="1"/>
                        </div>
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
