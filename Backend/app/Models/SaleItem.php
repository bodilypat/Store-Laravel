//app/Models/SaleItem.php

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SaleItem extends Model
{
    use HasFactory;

    /* Mass assignable attributes */
    protected $fillable = [
        'sale_id',
        'product_id',
        'quantity',
        'price',
        'total'
    ];

    /* Attribute casting */
    protected $casts = [
        'price' => 'decimal:2',
        'total' => 'decimal:2',
        'quantity' => 'integer'
    ];

    /* 
    |---------------------------------------------------------------
    | Relationships
    |---------------------------------------------------------------
    */

    /* Sale item belongs to a sale */
    public function sale()
    {
        return $this->belongsTo(Sale::class);
    }

    /* Sale item belongs to a product */
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    /* 
    |---------------------------------------------------------------
    | Helper methods
    |---------------------------------------------------------------
    */
        /* Calculate total price for the sale item */
    public function calculateTotal()
    {
        $this->total = $this->quantity * $this->price;
    }
}

