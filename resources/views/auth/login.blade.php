@extends('layouts.app-login')

@section('title')
    Login
@endsection

@section('content')
    <div class="d-flex align-items-center p-12 p-lg-20">
        <div class="bg-body d-flex flex-column align-items-stretch flex-center rounded-4 w-md-600px p-20">
            <div class="row mb-20 px-lg-10 ">
                <div class="col-12 col-md-6 d-flex align-items-center">
                    <img src="/assets/images/KANREG3-BKN-1-768x204.png" alt="logo BKN" class="w-100">
                </div>
                <div class="col-12 col-md-6 d-flex align-items-center">
                    <img src="/assets/images/Logo_berakhlak_bangga-1024x390.png" alt="logo Berakhlak" class="w-100">
                </div>
            </div>
            <div class="d-flex flex-center flex-column flex-column-fluid px-lg-10 pb-15 pb-lg-20">
                <form class="form w-100" method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="text-center mb-11">
                        <h1 class="text-dark fw-bolder mb-3">Login Admin</h1>
                    </div>

                    @error('username')
                    <div class="alert alert-danger d-flex align-items-center p-5 mb-8">
                        <i class="bi bi-exclamation-octagon fs-1 text-danger me-4"></i>
                        <div class="d-flex flex-column">
                            <h4 class="mb-1 text-danger">Gagal Login</h4>
                            <span>Username atau password tidak sesuai!</span>
                        </div>
                    </div>
                    @enderror
                    
                    <div class="fv-row mb-8">
                        <input type="text" placeholder="Username" name="username" autocomplete="off"
                            value="{{ old('username') }}" required autofocus class="form-control bg-transparent" />
                    </div>
                    <div class="fv-row mb-8">
                        <input type="password" placeholder="Password" name="password" autocomplete="off"
                            class="form-control bg-transparent" />
                    </div>
                    <div class="d-grid mb-10">
                        <button type="submit" id="kt_sign_in_submit" class="btn btn-primary">
                            <span class="indicator-label">Login</span>
                        </button>
                    </div>
                </form>
            </div>
            <div class="d-flex justify-content-center px-lg-10">
                <p>2024 &copy; made with ❤️ by <a href="">Kanreg III BKN</a></p>
            </div>
        </div>
    </div>
@endsection
