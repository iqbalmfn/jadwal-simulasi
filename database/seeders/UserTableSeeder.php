<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::create([
            'name' => 'Admin Kanreg III BKN',
            'username' => 'admin',
            'email' => 'admin@mail.com',
            'password' => Hash::make('K0p1_p41t'),
        ]);
    }
}
