<!DOCTYPE html>
<html lang="en">
<!--begin::Head-->

<head>
    <title>@yield('title') - {{ env('APP_NAME') }} | Kanreg III BKN</title>
    <meta charset="utf-8" />
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
    <!--end::Fonts-->
    <!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
    <link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <!--end::Global Stylesheets Bundle-->
    <script>
        // Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }
    </script>
</head>
<!--end::Head-->
<!--begin::Body-->

<body id="kt_body" class="app-blank bgi-size-cover bgi-attachment-fixed bgi-position-center bgi-no-repeat">
    <!--end::Theme mode setup on page load-->
    <!--begin::Root-->
    <div class="d-flex flex-column flex-root" id="kt_app_root">
        <!--begin::Page bg image-->
        <style>
            body {
                position: relative;
                margin: 0;
                padding: 0;
                height: 100vh;
                background-image: url('assets/images/fotokantor.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
            }

            body::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 60, 67, 0.8);
                /* Warna merah dengan opacity 0.7 */
                z-index: 1;
                /* Memastikan overlay berada di atas background image */
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body>* {
                position: relative;
                z-index: 2;
                /* Memastikan konten berada di atas overlay */
            }

            [data-bs-theme="dark"] body {
                background-image: url('assets/media/auth/bg4-dark.jpg');
            }
        </style>
        <!--end::Page bg image-->
        <!--begin::Authentication - Sign-in -->
        <div class="d-flex flex-column flex-column-fluid flex-lg-row">
            <!--begin::Aside-->
            <div class="d-flex flex-center w-lg-50 pt-15 pt-lg-0 px-10">
                <!--begin::Aside-->
                <div class="d-flex flex-center flex-lg-start flex-column">
                    <!--begin::Logo-->
                    {{-- <a href="../../demo1/dist/index.html" class="mb-7">
							<img alt="Logo" src="assets/media/logos/custom-3.svg" />
						</a> --}}
                    <h1 class="text-white fs-2hx">Aplikasi Jadwal Simulasi</h1>
                    <!--end::Logo-->
                    <!--begin::Title-->
                    <h2 class="text-white fw-normal m-0">Kantor Regional III BKN Bandung</h2>
                    <!--end::Title-->
                </div>
                <!--begin::Aside-->
            </div>
            <!--begin::Aside-->
            <!--begin::Body-->
            @yield('content')
            <!--end::Body-->
        </div>
        <!--end::Authentication - Sign-in-->
    </div>
    <!--end::Root-->
    <!--begin::Global Javascript Bundle(mandatory for all pages)-->
    <script src="assets/plugins/global/plugins.bundle.js"></script>
    <script src="assets/js/scripts.bundle.js"></script>
    <!--end::Global Javascript Bundle-->
    <!--end::Javascript-->
</body>
<!--end::Body-->

</html>
