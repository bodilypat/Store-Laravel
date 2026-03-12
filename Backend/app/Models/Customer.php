#app/Models/Customer.php

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    /* Mass assignable attributes */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'status'
    ];
    /* Attribute casting */
    protected $casts = [
        'status' => 'boolean',
    ];

     /* 
     |--------------------------------------------------------------
     | Relationships
     |--------------------------------------------------------------
     */

     /* Customer has many sales */
     public function sales()
     {
         return $this->hasMany(Sale::class);
     }

     /* 
     |--------------------------------------------------------------
     | Helper Method
     |--------------------------------------------------------------
     */

    /* Total number of purchases */
    public function totalPurchases()
    {
        return $this->sales()->count();
    }

    /* Total amount spent */
    public function totalSpent()
    {
        return $this->sales()->sum('total_amount');
    }

    /* Is the customer active? */
    public function isActive()
    {
        return $this->status;
    }
}

