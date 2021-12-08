<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RegisterController extends Controller
{
    
    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' => 'Register'
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
            'username' => ['required', 'min:3', 'max:255', 'unique:users'],
            'email' => 'required|email:user',
            'password' => 'required|min:5|max:u255'
        ]);

        dd('registrasi berhasi');
    }
}
