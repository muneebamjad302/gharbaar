<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Str;
use App\Models\User;
use App\Models\Blog;
use App\Models\Blogger;

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
            $user= Blogger::inRandomOrder()->take(1)->first('id');
	    	Blog::create([
	            'blogger_id' => $user->id,
	            'title' => $faker->unique()->word,
	            'description' => $faker->text($maxNbChars = 400)   
	        ]);
    	}
    }
}
