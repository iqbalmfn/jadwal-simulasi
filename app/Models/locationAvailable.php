<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class locationAvailable extends Model
{
    use HasFactory;

    protected $fillable =[
        'period_id',
        'location_id'
    ];

    public function periode() {
        return $this->belongsTo(Period::class);
    }

    public function lokasi() {
        return $this->belongsTo(Location::class, 'location_id', 'id');
    }
}
