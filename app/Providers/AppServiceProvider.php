<?php

namespace App\Providers;

use App\Models\Period;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        $this->app->booted(function () {
            // update periode non aktif
            Period::query()
                ->where('tgl_mulai', '>', now())
                ->orWhere('tgl_selesai', '<=', now())
                ->update([
                    'is_active' => 0
                ]);

            // update periode aktif
            Period::query()
                ->where('tgl_mulai', '<=', now())
                ->where('tgl_selesai', '>', now())
                ->update([
                    'is_active' => 1
                ]);
        });
    }
}
