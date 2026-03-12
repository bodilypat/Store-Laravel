//app/Http/Controllers/DashboardController.php

<?php

namespace App\Http\Controllers;
use App\Models\Supplier;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $suppliers = Supplier::all();
        return view('dashboard', compact('suppliers'));
    }
}

