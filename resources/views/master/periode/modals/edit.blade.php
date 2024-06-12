<div class="modal fade" tabindex="-1" id="edit-{{ $data->id }}">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Edit {{ $title }}</h3>
                <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                    <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                </div>
            </div>

            <form method="POST" action="{{ route('admin.master.periode.update', ['periode' => $data->id]) }}">
                <div class="modal-body">
                    @csrf
                    <input type="hidden" name="_method" value="PUT">
                    <input type="hidden" name="type" value="edit-{{ $data->id }}">
                    <div class="mb-8">
                        <label class="form-label required">Nama Periode</label>
                        <input type="text" name="nama_periode" class="form-control @error('nama_periode') is-invalid @enderror"
                            placeholder="Masukkan Nama Periode" value="{{ $data->nama_periode }}" required />
                        @error('nama_periode')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        @php
                            $valueLokasiRaw = [];
                            foreach ($data->location_available as $locAvail) {
                                $valueLokasiRaw[] = $locAvail->lokasi->name;
                            }       
                            $valueLokasi = implode(', ', $valueLokasiRaw);                  
                        @endphp
                        <label class="form-label required">Lokasi Tersedia</label>
                        <input class="form-control" id="kt_tagify_edit_{{ $data->id }}" name="lokasi_tersedia" placeholder="Masukkan Lokasi" value="{{ $valueLokasi }}" required/>
                        @error('lokasi_tersedia')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Tanggal Mulai</label>
                        <input type="datetime-local" name="tgl_mulai" class="form-control @error('tgl_mulai') is-invalid @enderror" value="{{ $data->tgl_mulai }}" placeholder="Masukkan Tanggal Mulai">
                        @error('tgl_mulai')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label required">Tanggal Selesai</label>
                        <input type="datetime-local" name="tgl_selesai" class="form-control @error('tgl_selesai') is-invalid @enderror" value="{{ $data->tgl_selesai }}" placeholder="Masukkan Tanggal Selesai">
                        @error('tgl_selesai')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div class="mb-8">
                        <label class="form-label">Tipe Grid</label>
                        <select type="text" name="tipe_grid"
                            class="form-control @error('tipe_grid') is-invalid @enderror" required>
                            @php
                                $types = ['vertical', 'horizontal'];
                            @endphp
                            @foreach ($types as $type)
                                <option value="{{ $type }}" {{ $type == $data->tipe_grid ? "selected" : "" }}>{{ $type }}</option>
                            @endforeach
                        </select>
                        @error('tipe_grid')
                            <small class="invalid-feedback fs-8">
                                {{ $message }}
                            </small>
                        @enderror
                    </div>
                    <div>
                        <label class="form-label">Status Aktif</label>
                        <div class="form-check form-switch form-check-custom form-check-solid">
                            <input class="form-check-input" type="checkbox" name="is_active" value="1" {{ $data->is_active ? 'checked' : '' }}/>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-bs-dismiss="modal"><i class="bi bi-x-lg me-1"></i>
                        Batal</button>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-save me-1"></i> Update</button>
                </div>
            </form>
        </div>
    </div>
</div>
