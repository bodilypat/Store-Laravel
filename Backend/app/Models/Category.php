<!-- #app/Models/Category.php -->

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    /* Mass assignable attributes */
    protected $fillable = [
        'name',
        'slug',
        'parent_id',
        'description',
        'status'
    ];

    /* Attribute casting */
    protected $casts = [
        'status' => 'boolean'
    ];

    /* 
    |---------------------------------------------------
    | Relationships 
    |---------------------------------------------------
    */

    /* Category has many product */

    public function products()
    {
        return $this->hasMany(Product::class);
    }

    /* Parent category */
    public function parent()
    {
        return $this->belongsTo(Category::class, 'parent_id');
    }

    /* Child categories */
    public function children()
    {
        return $this->hasMany(Category::class, 'parent_id');
    }
}

