#app/Models/Purchase.php

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    use HasFactory;

    /* Mass assignable attributes */
    protected $fillable = [
        'purchas_number',
        'user_id',
        'supplier_id',
        'total_amount',
        'tax',
        'discount',
        'status',
        'notes' 
    ];

    /* Attribute casting */
    protected $casts = [
        'status' => 'boolean',
        'total_amount' => 'decimal:2',
        'tax' => 'decimal:2',
        'discount' => 'decimal:2',
    ];

    /* 
    |------------------------------------------------------------
    | Relationships 
    |------------------------------------------------------------
    */

    /* Purchase created  by user(admin/manager */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /* Purchase belongs to supplier */
    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }

    /* Purchase has many purchase items */
    public function items()
    {
        return $this->belongsTo(PurchaseItem::class);
    }

    /* 
    |--------------------------------------------------------------
    | Helper Methods
    |--------------------------------------------------------------
    */

    /* Total quantity purchased */
    public function totalQuantity()
    {
        return $this->items()->sum('quantity');
    }

     /* Total amount after tax and discount */
     public function finalAmount()
     {
         $taxAmount = ($this->total_amount * $this->tax) / 100;
         $discountAmount = ($this->total_amount * $this->discount) / 100;
         return $this->total_amount + $taxAmount - $discountAmount;
     }
}

