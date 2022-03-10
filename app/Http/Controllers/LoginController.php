<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\User;
use App\Models\Admin;
use App\Models\Blogger;
use Hash;
use Validator;
use Auth;
use DB;
use Session;

class LoginController extends Controller
{
    public function dashboard()
    {
        $admins =Admin::all();
        $users = User::all();
        $bloggers = Blogger::all();
        return view('dashboard',compact('admins','users','bloggers'));
    }

    public function userLogin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['error' => $validator->errors()->all()]);
        }

        if(auth()->guard('user')->attempt(['email' => request('email'), 'password' => request('password')])){

            config(['auth.guards.api.provider' => 'user']);
            
            $user = User::find(auth()->guard('user')->user()->id);

            $success =  $user;

            $token = $user->createToken('MyApp',['user'])->accessToken; 
            $success['token'] =  $token; 
            session(['token' => $token]);
            return redirect('api/dashboard');

            // return response()->json($success, 200);
        }else{ 
            return response()->json(['error' => ['Email and Password are Wrong.']], 200);
        }
    }

    public function adminLogin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['error' => $validator->errors()->all()]);
        }

        if(auth()->guard('admin')->attempt(['email' => request('email'), 'password' => request('password')])){

            config(['auth.guards.api.provider' => 'admin']);
            
            $admin = Admin::select('admins.*')->find(auth()->guard('admin')->user()->id);
            $token =  $admin->createToken('MyApp',['admin'])->accessToken; 
            session(['token' => $token]);
            return redirect('api/dashboard');
        }else{ 
            return response()->json(['error' => ['Email and Password are Wrong.']], 200);
        }
    }

    public function bloggerLogin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if($validator->fails()){
            return response()->json(['error' => $validator->errors()->all()]);
        }

        if(auth()->guard('blogger')->attempt(['email' => request('email'), 'password' => request('password')])){

            config(['auth.guards.api.provider' => 'blogger']);
            
            $blogger = Blogger::select('bloggers.*')->find(auth()->guard('blogger')->user()->id);
            $success =  $blogger;
            $token =  $blogger->createToken('MyApp',['blogger'])->accessToken; 
            $success['token'] =  $token; 
            session(['token' => $token]);
            return redirect('api/dashboard');

        }else{ 
            return response()->json(['error' => ['Email and Password are Wrong.']], 200);
        }
    }

    public function userLogout()
    {
        $user_id = auth()->guard('user')->user()->id;
        $users = DB::table('oauth_access_tokens')
                ->where('user_id', $user_id )
                ->where('scopes', '["user"]')
                ->delete();
        Session::forget('token');
        return response()->json([
            'successd'=>true,
            'message'=>'loggged Out Successfully'
        ]);
    }

    public function adminLogout()
    {
        $user_id = auth()->guard('admin')->user()->id;
        $users = DB::table('oauth_access_tokens')
                ->where('user_id', $user_id )
                ->where('scopes', '["admin"]')
                ->delete();
        Session::forget('token');
        return response()->json([
            'successd'=>true,
            'message'=>'loggged Out Successfully'
        ]);
    }

    public function bloggerLogout()
    {
        $user_id = auth()->guard('blogger')->user()->id;
        $users = DB::table('oauth_access_tokens')
                ->where('user_id', $user_id )
                ->where('scopes', '["blogger"]')
                ->delete();
        Session::forget('token');
        return response()->json([
            'successd'=>true,
            'message'=>'loggged Out Successfully'
        ]);
    }
}