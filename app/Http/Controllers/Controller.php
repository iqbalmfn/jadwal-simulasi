<?php

namespace App\Http\Controllers;

use App\Models\Period;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    public function checkPeriodeAktif($period_id) {
         // cek periode aktif
         $checkPeriod = Period::query()
            ->whereId($period_id)
            ->whereIsActive(1)
            ->first();

         return $checkPeriod;
    }
}
