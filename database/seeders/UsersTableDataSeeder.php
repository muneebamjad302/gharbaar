<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Faker\Factory as Faker;
use Illuminate\Support\Str;

class UsersTableDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 15; $i++) { 
	    	User::create([
	            'name' => str::random(8),
	            'email' => str::random(12).'@mail.com',
	            'password' => bcrypt('password')
	        ]);
    	}
    }
}
