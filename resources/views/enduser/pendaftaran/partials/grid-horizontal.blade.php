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
    <div class="col-12 mb-5">
        <div class="border border-3 border-primary rounded">
            <div class="text-center bg-primary text-white w-100 p-3">
                <span class="fs-3 fw-bold">{{ formatTanggalIndonesia($date->tanggal) }}</span>
            </div>

            <div class="p-5">
                <div class="row d-flex justify-content-center">
                    @forelse ($schedules as $schedule)
                        <div class="col-12 col-md-3 {{ $agent->isMobile() ? "mb-5" : "" }}">
                            <div class="card shadow">
                                @if ($schedule->kuota <= $schedule->peserta->count())
                                    <div class="overlay">
                                        <div class="d-flex flex-column justify-content-center align-items-center h-100">
                                            <i class="bi bi-ban text-danger" style="font-size:75px;"></i>
                                            <span class="fw-bolder text-danger fs-2hx">Penuh</span>
                                        </div>
                                    </div>
                                @endif
                                <div class="d-flex justify-content-center border-bottom pt-5 pb-4">
                                    <span class="card-title fw-bolder fs-3">
                                        {{ $schedule->nama_sesi }}
                                    </span>
                                </div>
                                <div class="card-body text-center p-5">
                                    <div class="d-flex flex-column align-items-center">
                                        <div class="fw-bold d-flex flex-column gap-0" style="font-size: 65px;">
                                            {{ $schedule->kuota - $schedule->peserta->count() }}
                                            <span style="margin-top:-10px;" class="fs-4 fw-normal">Peserta</span>
                                        </div>

                                    </div>
                                </div>
                                <div class="card-footer d-grid pt-3 pb-3">
                                    <a href="{{ route('pendaftaran.form', ['id' => $schedule->id]) }}"
                                        class="btn btn-primary"
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
                        </div>
                    @empty
                    @endforelse
                </div>
            </div>
        </div>
    </div>
@empty
    <div class="alert alert-dismissible bg-light-danger d-flex flex-center flex-column py-10 px-10 px-lg-20 mb-10">
        <!--begin::Icon-->
        <i class="ki-duotone ki-information-5 fs-5tx text-danger mb-5"><span class="path1"></span><span
                class="path2"></span><span class="path3"></span></i>
        <!--end::Icon-->

        <!--begin::Wrapper-->
        <div class="text-center">
            <!--begin::Title-->
            <h1 class="fw-bold mb-5 text-danger">Belum tersedia</h1>
            <!--end::Title-->

            <!--begin::Separator-->
            <div class="separator separator-dashed border-danger opacity-25 mb-5"></div>
            <!--end::Separator-->

            <!--begin::Content-->
            <div class="mb-9 text-gray-900">
                Belum ada jadwal simulasi CAT yang tersedia.
            </div>
            <!--end::Content-->

            <!--begin::Buttons-->
            <div class="d-flex flex-center flex-wrap">
                <a href="{{ route('enduser.index') }}" class="btn btn-danger m-2">Pilih Lokasi</a>
            </div>
            <!--end::Buttons-->
        </div>
        <!--end::Wrapper-->
    </div>
@endforelse
