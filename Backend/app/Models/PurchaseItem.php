<!-- //app/Models/PurchaseItem.php -->

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PurchaseItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'purchase_id',
        'product_id',
        'quantity',
        'price',
    ];

    /* Mass assignable attributes */
    protected $fillable = [
        'purchase_id',
        'product_id',
        'quantity',
        'cost_price',
        'total'
    ];

    /* Attribute casting */
    protected $casts = [
        'quantity' => 'integer',
        'cost_price' => 'decimal:2',
        'total' => 'decimal:2',
    ];

    /* 
    |--------------------------------------------------------------
    | Relationships
    |--------------------------------------------------------------
    */
     
    /* Purchase item belongs to a purchase */
    public function purchase()
    {
        return $this->belongsTo(Purchase::class);
    }

    /* Purchase item belongs to a product */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    /* 
    |--------------------------------------------------------------
    | Helper Methods 
    |--------------------------------------------------------------
    */

    /* Calculate total cost */
    public function calculateTotal()
    {
        return $this->quantity * $this->cost_price;
    }
}


