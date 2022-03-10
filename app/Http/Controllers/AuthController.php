<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthController extends Controller
{
    // admins, users, bloggers
    public function adminLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
       $table = "admins";

       return $this->login($request, $table);

    }

    public function userLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
       $table = "users";

       return $this->login($request, $table);

    }
    public function bloggerLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
       $table = "bloggers";

       return $this->login($request, $table);

    }

    public function login(Request $request, string $TABLE = "users")
    {
        $user = new User();
        $user->setTable($TABLE);

        $user = $user->where('email', $request->email)->first();
    
        if (! $user) {
            throw ValidationException::withMessages([
                'email' => ['The provided email is incorrect.'],
            ]);
        }
        elseif(! Hash::check($request->password, $user->password)){
            throw ValidationException::withMessages([
                'password' => ['The provided password is incorrect.'],
            ]);
        }
            
        $token = $user->createToken('personal_access_token')->plainTextToken;
        return response()->json([
            'user' =>$user,
            'token'=> $token,
            "userType" => $this->authType($TABLE)
        ], 200);
    }

    public function authType(string $table = "users")
    {
        switch($table) {
            case "admins":
                $role = "Admin";
                break;
            case "bloggers":
                $role = "Blogger";
                break;
            default:
                $role = "User";
        }
        return $role;
    }
}
