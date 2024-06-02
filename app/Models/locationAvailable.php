<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class locationAvailable extends Model
{
    use HasFactory;

    protected $fillable =[
        'period_id',
        'schedule_id'
    ];

    public function periode() {
        return $this->belongsTo(Period::class);
    }

    public function jadwal() {
        return $this->belongsTo(Schedule::class);
    }
}
