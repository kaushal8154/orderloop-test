<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Models\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //

            $user = User::create([
                'firstname' => "Admin",
                'lastname' => "",
                'user_type' => "user",
                'email' => "admin@adminmail.com",
                'password' => Hash::make('admin123'), // default password
            ]);

            DB::table('model_has_roles')->insert([
                'role_id'    => 1, // "User" role
                'model_type' => User::class,
                'model_id'   => $user->id,
            ]);

        for ($i = 1; $i <= 10; $i++) {
            // Create User
            $user = User::create([
                'firstname' => "Test User {$i}",
                'lastname' => "",
                'user_type' => "user",
                'email' => "user{$i}@example.com",
                'password' => Hash::make('user123'), // default password
            ]);

            // Assign role via model_has_roles table
            DB::table('model_has_roles')->insert([
                'role_id'    => 2, // "User" role
                'model_type' => User::class,
                'model_id'   => $user->id,
            ]);
        }
    }
}
