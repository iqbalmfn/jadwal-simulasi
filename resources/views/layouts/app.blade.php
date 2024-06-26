<!DOCTYPE html>
<html lang="en">
	<!--begin::Head-->
	<head><base href=""/>
		<title>@yield('title') - {{ env('APP_NAME') }} | Kanreg III BKN</title>
		<meta charset="utf-8" />
		<meta name="description" content="Aplikasi Jadwal Simulasi CAT Kanreg III BKN Bandung" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta property="og:image" content="{{ asset('assets/images/logo-circle.png') }}" />
		<meta property="og:locale" content="id_ID" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Aplikasi Jadwal Simulasi CAT Kanreg III BKN Bandung" />
		<meta property="og:url" content="{{ env('APP_URL') }}" />
		<meta property="og:site_name" content="Jadwal Simulasi | Kanreg III BKN" />
		<link rel="shortcut icon" href="{{ asset('favicon.ico') }}" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		<!--end::Fonts-->
		<!--begin::Vendor Stylesheets(used for this page only)-->
		<link href="{{ asset('assets/plugins/custom/fullcalendar/fullcalendar.bundle.css') }}" rel="stylesheet" type="text/css" />
		<link href="{{ asset('assets/plugins/custom/datatables/datatables.bundle.css') }}" rel="stylesheet" type="text/css" />
		<!--end::Vendor Stylesheets-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="{{ asset('assets/plugins/global/plugins.bundle.css') }}" rel="stylesheet" type="text/css" />
		<link href="{{ asset('assets/css/style.bundle.css') }}" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
        
        @yield('styles')
	</head>

	<body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">
		<!--begin::App-->
		<div class="d-flex flex-column flex-root app-root" id="kt_app_root">
			<!--begin::Page-->
			<div class="app-page flex-column flex-column-fluid" id="kt_app_page">
				<!--begin::Header-->
				@include('layouts.partials.header')
				<!--end::Header-->
				<!--begin::Wrapper-->
				<div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
					<!--begin::Sidebar-->
					@include('layouts.partials.sidebar')
					<!--end::Sidebar-->
					<!--begin::Main-->
					<div class="app-main flex-column flex-row-fluid" id="kt_app_main">
						<!--begin::Content wrapper-->
						<div class="d-flex flex-column flex-column-fluid">
							<!--begin::Toolbar-->
							<div id="kt_app_toolbar" class="app-toolbar py-3 py-lg-6">
								<!--begin::Toolbar container-->
								<div id="kt_app_toolbar_container" class="app-container container-fluid d-flex flex-stack">
									@yield('toolbar')
								</div>
								<!--end::Toolbar container-->
							</div>
							<!--end::Toolbar-->
							<!--begin::Content-->
							<div id="kt_app_content" class="app-content flex-column-fluid">
								<!--begin::Content container-->
								<div id="kt_app_content_container" class="app-container container-fluid">
									@yield('content')
								</div>
								<!--end::Content container-->
							</div>
							<!--end::Content-->
						</div>
						<!--end::Content wrapper-->
						<!--begin::Footer-->
						@include('layouts.partials.footer')
						<!--end::Footer-->
					</div>
					<!--end:::Main-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::App-->
		<!--begin::Drawers-->
		
		<!--end::Drawers-->
		<!--begin::Scrolltop-->
		<div id="kt_scrolltop" class="scrolltop" data-kt-scrolltop="true">
			<i class="ki-duotone ki-arrow-up">
				<span class="path1"></span>
				<span class="path2"></span>
			</i>
		</div>
		<!--end::Scrolltop-->
		
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="{{ asset('assets/plugins/global/plugins.bundle.js') }}"></script>
		<script src="{{ asset('assets/js/scripts.bundle.js') }}"></script>
		<!--end::Global Javascript Bundle-->

        @yield('scripts')
        @if (Session::get('success'))
			<script>
				Swal.fire({
					title: "Berhasil!",
					text: "{{Session::get('success')}}",
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
					text: "{{Session::get('error')}}",
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
					text: "{{$error}}",
					icon: "error",
                    timer: 2000,
					buttonsStyling: false,
					showConfirmButton: false
				});
				</script>
			@endforeach
		@endif
		<!--end::Javascript-->
	</body>
	<!--end::Body-->
</html>