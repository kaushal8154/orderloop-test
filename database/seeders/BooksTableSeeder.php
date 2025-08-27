<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BooksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $books = [];

        for ($i = 1; $i <= 25; $i++) {
            $books[] = [
                'bookname'    => 'Book ' . $i,
                'description' => 'This is a description for Book ' . $i,
                'status'      => 'available',
                'created_at'  => now(),
                'updated_at'  => now(),
            ];
        }

        DB::table('books')->insert($books);
    }
}
