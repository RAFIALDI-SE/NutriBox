<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    protected $fillable = [
        'title','slug'
    ];

    public function products()
    {
        return $this->hasMany(product::class);
    }
}
