//app/Http/Controllers/SaleController.php 

<?php
namespace App\Http\Controllers;
use App\Models\Sale;
use Illuminate\Http\Request;

class SaleController extends Controller
{
    public function index()
    {
        $sales = Sale::all();
        return response()->json($sales);
    }

    public function store(Request $request)
    {
        $sale = Sale::create($request->all());
        return response()->json($sale, 201);
    }

    public function show($id)
    {
        $sale = Sale::findOrFail($id);
        return response()->json($sale);
    }

    public function update(Request $request, $id)
    {
        $sale = Sale::findOrFail($id);
        $sale->update($request->all());
        return response()->json($sale);
    }

    public function destroy($id)
    {
        Sale::destroy($id);
        return response()->json(null, 204);
    }
}
