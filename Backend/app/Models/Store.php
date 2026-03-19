<!-- app/models/Store.php 
| -- This model represents a store in the application. 
| -- It has a one-to-many relationship with the Product model, meaning that a store can have multiple products. 
| -- The fillable property specifies which attributes can be mass assigned when creating or updating a store.
 -->
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'address',
        'phone',
        'email',
    ];

    public function products()
    {
        return $this->hasMany(Product::class);
    }
}


