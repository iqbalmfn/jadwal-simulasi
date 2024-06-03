<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    use HasFactory;

    protected $fillable = [
        'period_id',
        'location_id',
        'nama_sesi',
        'tanggal',
        'kuota'
    ];

    public function periode() {
        return $this->belongsTo(Period::class, 'period_id', 'id');
    }

    public function lokasi() {
        return $this->belongsTo(Location::class, 'location_id', 'id');
    }

    public function peserta() {
        return $this->hasMany(Biodata::class, 'schedule_id', 'id');
    }
}
