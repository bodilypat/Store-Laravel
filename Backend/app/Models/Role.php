<!-- app/Models/Role.php 
| -- This model represents a role in the application. 
| -- It has a fillable property that specifies which attributes can be mass assigned when creating or updating a role. 
-->
<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
    ];

    public function users()
    {
        return $this->hasMany(User::class);
    }
}

