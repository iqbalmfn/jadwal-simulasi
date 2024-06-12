<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ env('APP_NAME') }} | Kanreg III BKN</title>
    <meta name="description" content="Aplikasi Jadwal Simulasi CAT Kanreg III BKN Bandung" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta property="og:image" content="{{ asset('assets/images/logo-circle.png') }}" />
    <meta property="og:locale" content="id_ID" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="Aplikasi Jadwal Simulasi CAT Kanreg III BKN Bandung" />
    <meta property="og:url" content="{{ env('APP_URL') }}" />
    <meta property="og:site_name" content="{{ env('APP_NAME') }} | Kanreg III BKN" />
    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" />
    <!--begin::Fonts(mandatory for all pages)-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!--end::Fonts-->

    <!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
    <link href="{{ asset('assets/plugins/global/plugins.bundle.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/style.bundle.css') }}" rel="stylesheet" type="text/css" />
    <!--end::Global Stylesheets Bundle-->

    <style>
        html,
        body {
            height: 100%;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        body {
            position: relative;
            margin: 0;
            padding: 0;
            height: 100vh;
            background-image: url('{{ asset('assets/images/fotokantor.png') }}');
            background-size: cover;
            background-position: center;
            background-repeat: repeat-y;
        }

        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 60, 67, 0.8);
            z-index: 1;
        }

        .overlay-full {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 60, 67, 0.8);
            z-index: 1;
            pointer-events: none;
            /* Menjadikan lapisan ini tidak menanggapi event mouse */
        }

        .d-flex {
            position: relative;
            z-index: 1;
            /* color: white; */
            text-align: center;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.9);
            /* Warna dan opacity overlay */
            z-index: 2;
            /* Letakkan overlay di atas card */
            opacity: 1;
            /* Awalnya overlay tidak terlihat */
            transition: opacity 0.3s ease;
            /* Transisi untuk efek muncul */
        }
    </style>
</head>

<body class="bg-gray-400">
    <div class="d-flex align-items-center justify-content-center p-5 p-lg-20 full-height">
        @yield('content')
    </div>

    <div class="modal fade" tabindex="-1" id="cetak">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">Cetak Kartu Peserta</h3>
                    <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                        <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                    </div>
                </div>
    
                <form method="POST" action="{{ route('cetak.store') }}">
                    <div class="modal-body">
                        @csrf
                        <div>
                            <input type="number" name="nik" class="form-control @error('nik') is-invalid @enderror"
                                placeholder="Masukkan NIK" value="{{ old('nik') }}" required />
                            @error('nik')
                                <small class="invalid-feedback fs-8">
                                    {{ $message }}
                                </small>
                            @enderror
                        </div>
                    </div>
    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal"><i class="bi bi-x-lg me-1"></i>
                            Batal</button>
                        <button type="submit" class="btn btn-primary"><i class="bi bi-printer me-1"></i> Cetak</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--begin::Javascript-->
    <script>
        var hostUrl = "assets/";
    </script>
    <!--begin::Global Javascript Bundle(mandatory for all pages)-->
    <script src="{{ asset('assets/plugins/global/plugins.bundle.js') }}"></script>
    <script src="{{ asset('assets/js/scripts.bundle.js') }}"></script>
    <!--end::Global Javascript Bundle-->

    @if (Session::get('success'))
        <script>
            Swal.fire({
                title: "Berhasil!",
                text: "{{ Session::get('success') }}",
                icon: "success",
                timer: 2000,
                buttonsStyling: false,
                showConfirmButton: false
            });
        </script>
    @endif
    @if (Session::get('error'))
        <script>
            Swal.fire({
                title: "Gagal!",
                text: "{{ Session::get('error') }}",
                icon: "error",
                timer: 2000,
                buttonsStyling: false,
                showConfirmButton: false
            });
        </script>
    @endif
    @if ($errors->any())
        @foreach ($errors->all() as $error)
            <script>
                Swal.fire({
                    title: "Gagal!",
                    text: "{{ $error }}",
                    icon: "error",
                    timer: 2000,
                    buttonsStyling: false,
                    showConfirmButton: false
                });
            </script>
        @endforeach
    @endif
</body>

</html>
