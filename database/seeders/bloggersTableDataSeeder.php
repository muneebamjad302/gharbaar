<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Blogger;
use App\Models\User;
use Illuminate\Support\Str;

class bloggersTableDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 15; $i++) { 
	    	Blogger::create([
	            'name' => str::random(8),
	            'email' => str::random(12).'@mail.com',
	            'password' => bcrypt('password')
	        ]);
    	}
    }
}
