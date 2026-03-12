<!-- //app/Http/Controllers/PurchaseController.php --> 

<?php

namespace App\Http\Controllers;
use App\Models\Purchase;
use Illuminate\Http\Request;

class PurchaseController extends Controller
{
    public function index()
    {
        $purchases = Purchase::with('product')->get();
        return response()->json($purchases);
    }

    public function store(Request $request)
    {
        $purchase = Purchase::create($request->all());
        return response()->json($purchase, 201);
    }
}



