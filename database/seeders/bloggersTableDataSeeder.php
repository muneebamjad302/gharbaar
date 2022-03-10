<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Blogger;

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
	            'name' => str_random(8),
	            'email' => str_random(12).'@mail.com',
	            'password' => bcrypt('password')
	        ]);
    	}
    }
}
