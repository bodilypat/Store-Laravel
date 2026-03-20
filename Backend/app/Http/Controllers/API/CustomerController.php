<!-- app/Http/Controllers/API/CustomerController.php
| -- This controller handles customer-related operations for the API.
| -- It provides endpoints for creating, reading, updating, and deleting customers.
| -->
<?php
namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;

class CustomerController extends Controller
{
    // Get all customers
    public function index()
    {
        $customers = Customer::all();
        return response()->json($customers);
    }

    // Create a new customer
    public function store(Request $request)
    {
        $customer = Customer::create($request->all());
        return response()->json($customer, 201);
    }

    // Get a specific customer
    public function show($id)
    {
        $customer = Customer::findOrFail($id);
        return response()->json($customer);
    }

    // Update a customer
    public function update(Request $request, $id)
    {
        $customer = Customer::findOrFail($id);
        $customer->update($request->all());
        return response()->json($customer);
    }

    // Delete a customer
    public function destroy($id)
    {
        Customer::destroy($id);
        return response()->json(null, 204);
    }
}


