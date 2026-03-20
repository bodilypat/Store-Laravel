<!-- app/Http/Requests/ProductRequest.php 
| -- Validation for creating or updating a product
| -- This file defines a form request class for validating product data when creating or updating a product. 
| -- It ensures that the required fields are present and meet the specified criteria before the data is processed by the controller.
| -->

<?php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true; // Adjust this based on your authorization logic
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'product_name' => 'required|string|max:100|unique:products,product_name,' . $this->route('product'),
            'barcode' => 'nullable|string|max:50|unique:products,barcode,' . $this->route('product'),
            'category_id' => 'nullable|exists:categories,category_id',
            'supplier_id' => 'nullable|exists:suppliers,supplier_id',
            'price' => 'required|numeric|min:0',
            'cost_price' => 'required|numeric|min:0',
            'stock' => 'required|integer|min:0',
            'min_stock' => 'required|integer|min:0',
            'description' => 'nullable|string',
            'product_image' => 'nullable|image|max:2048', // Max 2MB
        ];
    }
}
