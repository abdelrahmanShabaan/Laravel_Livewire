<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'abdlerhamn shaaban',
            'email' => 'boodyelmasry6@gmail.com',
            'password'=> bcrypt('12345678')
        ]);

        User::create([
            'name' => 'ahmed shaaban',
            'email' => 'ahmed@gmail.com',
            'password'=> bcrypt('12345678')
        ]);

        User::create([
            'name' => 'karem shaaban',
            'email' => 'karem^@gmail.com',
            'password'=> bcrypt('12345678')
        ]);
    }
}
