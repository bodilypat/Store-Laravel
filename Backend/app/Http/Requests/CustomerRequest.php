<!-- app/Http/Requests/CustomerRequest.php 
| -- Validation for creating or updating a customer
| -- This file defines a form request class for validating customer data when creating or updating a customer. 
| -- It ensures that the required fields are present and meet the specified criteria before the data is processed by the controller.
| -->
<?php
namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
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
            'first_name' => 'required|string|max:50',
            'last_name' => 'required|string|max:50',
            'email' => 'nullable|email|max:100|unique:customers,email,' . $this->route('customer'),
            'phone' => 'nullable|string|max:20',
        ];
    }
}
