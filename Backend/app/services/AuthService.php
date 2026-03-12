<!-- //app/Services/AuthService.php -->

<?php
namespace App\Services;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthService
{
    public function register($data)
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);

        return $user;
    }

    public function login($credentials)
    {
        $user = User::where('email', $credentials['email'])->first();

        if ($user && Hash::check($credentials['password'], $user->password)) {
            // Generate token or session here
            return $user;
        }

        return null;
    }
}

