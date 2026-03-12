<!-- //app/Services/SupplierService.php -->

<?php

namespace App\Services;
use App\Models\Supplier;
class SupplierService
{
    public function getAllSuppliers()
    {
        return Supplier::all();
    }

    public function getSupplierById($id)
    {
        return Supplier::find($id);
    }

    public function createSupplier($data)
    {
        return Supplier::create($data);
    }

    public function updateSupplier($id, $data)
    {
        $supplier = Supplier::find($id);
        if ($supplier) {
            $supplier->update($data);
            return $supplier;
        }
        return null;
    }

    public function deleteSupplier($id)
    {
        $supplier = Supplier::find($id);
        if ($supplier) {
            $supplier->delete();
            return true;
        }
        return false;
    }
}   

