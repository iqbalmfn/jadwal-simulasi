<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Period extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama_periode',
        'is_active'
    ];

    public function location_available() {
        return $this->hasMany(locationAvailable::class);
    }
}