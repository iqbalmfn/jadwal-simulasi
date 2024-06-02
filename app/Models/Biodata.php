<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Biodata extends Model
{
    use HasFactory;

    protected $fillable = [
        'schedule_id',
        'ip',
        'nik',
        'nama_lengkap',
        'alamat',
        'emaail',
        'no_hp'
    ];

    public function jadwal() {
        return $this->belongsTo(Schedule::class);
    }
}
