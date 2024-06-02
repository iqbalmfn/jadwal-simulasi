<?php

namespace Database\Seeders;

use App\Models\Location;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class LocationTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'name' => 'Kanreg 3 Bandung',
                'created_at' => new \DateTime,
                'updated_at' => new \DateTime
            ],
            [
                'name' => 'Kantor UPSCKP Serang',
                'created_at' => new \DateTime,
                'updated_at' => new \DateTime
            ]
        ];

        Location::insert($data);
    }
}
