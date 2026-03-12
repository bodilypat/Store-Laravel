<!-- //app/Services/PurchaseService.php -->

<?php

namespace App\Services;
use App\Models\Purchase;
class PurchaseService
{
    public function createPurchase($data)
    {
        return Purchase::create($data);
    }
}





