<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Admin;
use Illuminate\Support\Str;

class AdminsTableDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 15; $i++) { 
	    	Admin::create([
	            'name' => str::random(8),
	            'email' => str::random(12).'@mail.com',
	            'is_super' => rand(0, 1),
	            'password' => bcrypt('password')
	        ]);
    	}
    }
}
