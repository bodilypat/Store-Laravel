#app/Models/Product.php

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    /* Mass assignable fields */
    protected $fillable = [
        'name',
        'sku',
        'category_id',
        'supplier_id',
        'price',
        'cost_price',
        'stock',
        'description',
        'status'
    ];

    /* Attrbute casting */
    protected $casts = [
        'price' => 'decimal:2',
        'cost_price' => 'decimal:2',
        'stock' => 'integer',
        'status' => 'boolean'
    ];

     /*
     |--------------------------------------------------
     |  Relationships 
     |-------------------------------------------------
     */

     /* Product belongs to a category */

     public function category()
     {
         return $this->belongsTo(Category::class);
     }

    /* Product belongs to a supplier */
     public function supplier()
     {
         return $this->belongsTo(Supplier::class);
     }

    /* Product has many sale items */
     public function saleItems()
     {
         return $this->hasMany(SaleItem::class);
     }

     /* Product purchased in many purchase items */
     public function purchaseItems()
     {
         return $this->hasMany(PurchaseItem::class);
     }

    /* 
    |----------------------------------------------------
    | Inventory Helpers
    |----------------------------------------------------
    */

    /* Increase stock */
    public function increaseStock($quantity)
    {
        $this->stock += $quantity;
        $this->save();
    }

    /* Decrease stock */
    public function decreaseStock($quantity)
    {
        $this->stock -= $quantity;
        $this->save();
    }

    /* Check if product is in stock */
    public function isInStock($quantity = 1)
    {
        return $this->stock >= $quantity;
    }
}
