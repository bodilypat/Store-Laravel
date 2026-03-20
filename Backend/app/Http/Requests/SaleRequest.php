<!-- app/Http/Requests/SaleRequest.php   # Validation for creating or updating a sale
| -- This file defines a form request class for validating sale data when creating or updating a sale. 
| -- It ensures that the required fields are present and meet the specified criteria before the data is processed by the controller.
| -->

<?php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SaleRequest extends FormRequest
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
            'invoice_no' => 'required|string|max:50|unique:sales,invoice_no,' . $this->route('sale'),
            'customer_id' => 'nullable|exists:customers,customer_id',
            'user_id' => 'nullable|exists:users,user_id',
            'store_id' => 'nullable|exists:stores,store_id',
            'total' => 'required|numeric|min:0',
            'discount' => 'nullable|numeric|min:0',
            'tax' => 'nullable|numeric|min:0',
            'grand_total' => 'required|numeric|min:0',
            'payment_method' => 'required|in:cash,credit_card,debit_card,mobile_payment',
            'paid_amount' => 'required|numeric|min:0',
            'change_amount' => 'required|numeric|min:0',
        ];
    }
}
