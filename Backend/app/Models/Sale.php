<!-- //app/Models/Sale.php -->

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    use HasFactory;

    /* Mass assignable fields */
    protected $fillable = [
        'invoice_number',
        'user_id',
        'customer_id',
        'total_amount',
        'discount',
        'tax',
        'payment_method',
        'status',
        'notes'
    ];

    /* Attribute casting */
    protected $casts = [
        'total_amount' => 'decimal:2',
        'discount' => 'decimal:2',
        'tax' => 'decimal:2',
    ];

    /* 
    |------------------------------------------------------------
    | Relationships 
    |------------------------------------------------------------
    */

    /* Sale belongs to a user (cashier/admin) */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /* Sale belongs to a customer */
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    /* Sale has many sale items */
    public function saleItems()
    {
        return $this->hasMany(SaleItem::class);
    }

    /* 
    |-------------------------------------------------------------
    | Helper Methods
    |-------------------------------------------------------------
    */

    /* Calculate total items sold */
    public function totalItems()
    {
        return $this->saleItems()->sum('quantity');
    }

     /* Calculate total amount after discount and tax */
     public function calculateTotalAmount()
     {
         $subtotal = $this->saleItems()->sum(\DB::raw('quantity * price'));
         $discountAmount = ($this->discount / 100) * $subtotal;
         $taxAmount = ($this->tax / 100) * ($subtotal - $discountAmount);
         return round($subtotal - $discountAmount + $taxAmount, 2);
     }
}



