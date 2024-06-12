@forelse ($dates as $date)
    @php
        $schedules = \App\Models\Schedule::query()
            ->with('peserta')
            ->wherePeriodId($date->period_id)
            ->whereLocationId($date->location_id)
            ->where('tanggal', 'like', '%' . date('Y-m-d', strtotime($date->tanggal)) . '%')
            ->orderBy('nama_sesi')
            ->get();
    @endphp
    <div class="col-12 col-md-4 mb-5">
        <div class="border border-3 border-primary rounded">
            <div class="text-center bg-primary text-white w-100 p-3">
                <span class="fs-3 fw-bold">{{ formatTanggalIndonesia($date->tanggal) }}</span>
            </div>

            <div class="p-5">
                @forelse ($schedules as $schedule)
                    <div class="card mb-5 shadow">
                        @if ($schedule->kuota <= $schedule->peserta->count())
                            <div class="overlay">
                                <div class="d-flex flex-column justify-content-center align-items-center h-100">
                                    <i class="bi bi-ban text-danger" style="font-size:75px;"></i>
                                    <span class="fw-bolder text-danger fs-2hx">Penuh</span>
                                </div>
                            </div>
                        @endif

                        <div class="pt-5 pb-3 border-bottom">
                            <h3 class="card-title fw-bolder">{{ $schedule->nama_sesi }}
                                ({{ date('H.i', strtotime($schedule->tanggal)) }} WIB)</h3>
                        </div>
                        <div class="card-body text-center pt-0 pb-4">
                            <div class="d-flex flex-column align-items-center">
                                <span class="fw-bold"
                                    style="font-size: 75px;">{{ $schedule->kuota - $schedule->peserta->count() }}</span>
                                <span style="margin-top:-20px;" class="fs-4">Peserta</span>
                            </div>
                        </div>
                        <div class="card-footer d-grid pt-3 pb-3">
                            <a href="{{ route('pendaftaran.form', ['id' => $schedule->id]) }}" class="btn btn-primary"
                                {{ $schedule->kuota <= $schedule->peserta->count() ? 'disabled' : '' }}>
                                <div class="d-flex justify-content-center align-items-center gap-3">
                                    <i
                                        class="bi bi-{{ $schedule->kuota <= $schedule->peserta->count() ? 'ban' : 'check-circle' }}"></i>
                                    <span class="indicator-label">
                                        {{ $schedule->kuota <= $schedule->peserta->count() ? 'Penuh' : 'Pilih' }}
                                    </span>
                                </div>
                            </a>
                        </div>
                    </div>
                @empty
                @endforelse
            </div>
        </div>
    </div>
@empty
    <div class="alert alert-dismissible bg-light-danger d-flex flex-center flex-column py-10 px-10 px-lg-20 mb-10">
        <i class="ki-duotone ki-information-5 fs-5tx text-danger mb-5"><span class="path1"></span><span
                class="path2"></span><span class="path3"></span></i>
        <div class="text-center">
            <h1 class="fw-bold mb-5 text-danger">Belum tersedia</h1>
            <div class="separator separator-dashed border-danger opacity-25 mb-5"></div>
            <div class="mb-9 text-gray-900">
                Belum ada jadwal simulasi CAT yang tersedia.
            </div>
            <div class="d-flex flex-center flex-wrap">
                <a href="{{ route('enduser.index') }}" class="btn btn-danger m-2">Pilih Lokasi</a>
            </div>
        </div>
    </div>
@endforelse
