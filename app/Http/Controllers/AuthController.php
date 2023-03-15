<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request){
        $check = [
            'login' => $request->login,
            'password' => $request->password,
        ];

        if (Auth::attempt($check)) {
            return redirect()->route('dashboard');
        }
    }
    public function logout(Request $request) {
        Auth::logout();
        return redirect('/login');
    }
}
