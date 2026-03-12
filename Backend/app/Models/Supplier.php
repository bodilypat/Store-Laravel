#app/Models/Supplier.php

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

    /* Mass assignable attributes */
    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'company_name',
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

    /* Supplier has many purchases */
    public function purchases()
    {
        return $this->hasMany(Purchase::class);
    }

    /* Supplier provides many products */
    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_supplier')
                    ->withPivot('supply_price', 'supply_date')
                    ->withTimestamps();
    }

    /* 
    |-----------------------------------------------------------------
    | Helper Methods
    |-----------------------------------------------------------------
    */

    /* Total purchases from this supplier */
    public function totalPurchases()
    {
        return $this->purchases()->count();
    }

    /* Total amount spent on this supplier */
    public function totalSpent()
    {
        return $this->purchases()->sum('total_amount');
    }
}

