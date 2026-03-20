<!-- app/Http/Controllers/API/ProductController.php 
| -- This controller handles product-related operations for the API.
| -- It provides endpoints for creating, reading, updating, and deleting products.
| -- The controller includes validation to ensure data integrity and proper error handling for cases where products are not found.
| -->
<?php
namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    // Get all products
    public function index()
    {
        $products = Product::all();
        return response()->json($products);
    }

    // Create a new product
    public function store(Request $request)
    {
        $request->validate([
            'product_name' => 'required|string|max:100|unique:products',
            'barcode' => 'nullable|string|max:50|unique:products',
            'category_id' => 'nullable|integer|exists:categories,category_id',
            'supplier_id' => 'nullable|integer|exists:suppliers,supplier_id',
            'price' => 'required|numeric|min:0',
            'cost_price' => 'required|numeric|min:0',
            'stock' => 'required|integer|min:0',
            'min_stock' => 'required|integer|min:0',
            'description' => 'nullable|string',
            'product_image' => 'nullable|string|max:255'
        ]);

        $product = Product::create($request->all());
        return response()->json($product, 201);
    }

    // Get a single product
    public function show($id)
    {
        $product = Product::find($id);
        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }
        return response()->json($product);
    }

    // Update a product
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        $request->validate([
            'product_name' => "required|string|max:100|unique:products,product_name,$id,product_id",
            'barcode' => "nullable|string|max:50|unique:products,barcode,$id,product_id",
            'category_id' => 'nullable|integer|exists:categories,category_id',
            'supplier_id' => 'nullable|integer|exists:suppliers,supplier_id',
            'price' => 'required|numeric|min:0',
            'cost_price' => 'required|numeric|min:0',
            'stock' => 'required|integer|min:0',
            'min_stock' => 'required|integer|min:0',
            'description' => 'nullable|string',
            'product_image' => 'nullable|string|max:255'
        ]);

        $product->update($request->all());
        return response()->json($product);
    }
    // Delete a product
    public function destroy($id)
    {
        $product = Product::find($id);
        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }
        $product->delete();
        return response()->json(['message' => 'Product deleted successfully']);
    }
}


