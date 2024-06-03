<div class="modal fade text-gray-700" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" id="delete-{{ $data->id }}">
    <form action="{{ route('admin.master.periode.destroy', ['periode' => $data->id]) }}" method="POST">
        <input type="hidden" name="_method" value="DELETE">
        <div class="modal-dialog modal-sm modal-dialog-centered">
            @csrf
            <div class="modal-content">
                <div class="modal-body text-center">
                    <i class="bi bi-exclamation-circle text-danger" style="font-size:50px;"></i>
                    <div class="mt-5">
                        <span>Apakah anda akan menghapus data ini?</span>
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-around">
                    <button type="button" class="btn btn-light" data-bs-dismiss="modal"><i class="bi bi-x-lg me-1"></i> Batal</button>
                    <button type="submit" class="btn btn-danger"><i class="bi bi-trash me-1"></i> Hapus</button>
                </div>
            </div>
        </div>
    </form>
</div>