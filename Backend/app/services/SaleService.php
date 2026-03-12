<!-- //app/Services/SaleService.php -->

<?php

namespace App\Services;
use App\Models\Sale;
class SaleService
{
    public function createSale($data)
    {
        return Sale::create($data);
    }

    public function getAllSales()
    {
        return Sale::all();
    }

    public function getSaleById($id)
    {
        return Sale::findOrFail($id);
    }

    public function updateSale($id, $data)
    {
        $sale = Sale::findOrFail($id);
        $sale->update($data);
        return $sale;
    }

    public function deleteSale($id)
    {
        $sale = Sale::findOrFail($id);
        $sale->delete();
        return true;
    }
}

