//app/Services/CustomerService.php 

<?php
namespace App\Services;
use App\Models\Customer;
class CustomerService
{
    public function getAllCustomers()
    {
        return Customer::all();
    }

    public function getCustomerById($id)
    {
        return Customer::find($id);
    }

    public function createCustomer($data)
    {
        return Customer::create($data);
    }

    public function updateCustomer($id, $data)
    {
        $customer = Customer::find($id);
        if ($customer) {
            $customer->update($data);
            return $customer;
        }
        return null;
    }

    public function deleteCustomer($id)
    {
        $customer = Customer::find($id);
        if ($customer) {
            $customer->delete();
            return true;
        }
        return false;
    }
}
