<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BlogsTableDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i=0; $i < 15; $i++) { 
	    	User::create([
	            'blogger_id' => rand(1,14),
	            'title' => $faker->unique()->word,
	            'description' => $faker->text($maxNbChars = 400)   
	        ]);
    	}
    }
}
