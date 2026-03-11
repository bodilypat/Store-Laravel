app/Http/Controllers/ProductController.php

<?php
namespace App\Http\Controllers;

use App\Http\Requests\CreateProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Services\ProductService;
use Illuminate\Http\JsonResponse;

class ProductController extends Controller
{
    protected $productService;

    public function __construct(ProductService $productService)
    {
        $this->productService = $productService;
    }

    public function index(): JsonResponse
    {
        $products = $this->productService->getAllProducts();
        return response()->json($products);
    }

    public function store(CreateProductRequest $request): JsonResponse
    {
        $product = $this->productService->createProduct($request->validated());
        return response()->json($product, 201);
    }

    public function show(int $id): JsonResponse
    {
        $product = $this->productService->getProductById($id);
        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }
        return response()->json($product);
    }

    public function update(UpdateProductRequest $request, int $id): JsonResponse
    {
        $updatedProduct = $this->productService->updateProduct($id, $request->validated());
        if (!$updatedProduct) {
            return response()->json(['message' => 'Product not found'], 404);
        }
        return response()->json($updatedProduct);
    }

    public function destroy(int $id): JsonResponse
    {
        $deleted = $this->productService->deleteProduct($id);
        if (!$deleted) {
            return response()->json(['message' => 'Product not found'], 404);
        }
        return response()->json(['message' => 'Product deleted successfully']);
    }
}

