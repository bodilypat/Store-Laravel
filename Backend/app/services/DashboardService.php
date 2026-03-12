//app/Services/DashboardService.php

<?php
namespace App\Services;
use App\Models\Product;
use App\Models\Order;
class DashboardService
{
    public function getDashboardData()
    {
        $totalProducts = Product::count();
        $totalOrders = Order::count();
        $totalRevenue = Order::sum('total_price');
        return [
            'totalProducts' => $totalProducts,
            'totalOrders' => $totalOrders,
            'totalRevenue' => $totalRevenue,
        ];
    }
}



