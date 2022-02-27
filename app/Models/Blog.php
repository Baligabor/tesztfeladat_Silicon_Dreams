<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;

    protected $fillable = [
        'author',
        'title',
        'description'
    ];

    public function tags()
    {
        return $this->belongsToMany('App\Models\Tag', 'blog_tags',
            'blog_id', 'tag_id');
    }
}
