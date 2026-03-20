<!-- app/Http/Controller/API/SaleController.php 
| -- This controller handles sale-related operations for the API.
| -- It provides endpoints for creating, reading, updating, and deleting sales.
| -->
<?php
namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Sale;

class SaleController extends Controller
{
    // Get all sales
    public function index()
    {
        $sales = Sale::all();
        return response()->json($sales);
    }

    // Create a new sale
    public function store(Request $request)
    {
        $sale = Sale::create($request->all());
        return response()->json($sale, 201);
    }

    // Get a specific sale
    public function show($id)
    {
        $sale = Sale::find($id);
        if (!$sale) {
            return response()->json(['message' => 'Sale not found'], 404);
        }
        return response()->json($sale);
    }

    // Update a sale
    public function update(Request $request, $id)
    {
        $sale = Sale::find($id);
        if (!$sale) {
            return response()->json(['message' => 'Sale not found'], 404);
        }
        $sale->update($request->all());
        return response()->json($sale);
    }

    // Delete a sale
    public function destroy($id)
    {
        $sale = Sale::find($id);
        if (!$sale) {
            return response()->json(['message' => 'Sale not found'], 404);
        }
        $sale->delete();
        return response()->json(['message' => 'Sale deleted successfully']);
    }
}
