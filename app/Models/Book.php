<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    //
    protected $guarded = [];

    public function borrowings()
    {
        return $this->hasMany(BooksBorrowing::class);
    }
}
