<!-- routes/api.php -->

<?php
    use Illuminate\Support\Facades\Route;
    use App\Http\Controllers\AuthController;
    use App\Http\Controllers\ProductController;
    
    Route:: prefix('auth')->group(function () {
        Route::post('register', [AuthController::class, 'register']);
        Route::post('login', [AuthController::class, 'login']);
    });

    Route::middleware('auth:sanctum')->group(function () {
        Route::post('products', ProductController::class);
        Route::get('categories', CategoryController::class);
        Route::get('sales', SaleController::class);
        Route::put('purchases', PurchaseController::class);
        Route::delete('customers', CustomerController::class);
        Route::get('suppliers', SupplierController::class);
        Route::get('dashboard', DashboardController::class);
    });

