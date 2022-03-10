<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
       UsersTableDataSeeder::class;
       AdminsTableDataSeeder::class;
       bloggersTableDataSeeder::class;
       BlogsTableDataSeeder::class;
    }
}
