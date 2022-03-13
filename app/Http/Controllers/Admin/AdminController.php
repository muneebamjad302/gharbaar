<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Blogger;
use Illuminate\Http\Request;
use Hash;
use Validator;
use Auth;


class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'name'=>'required',
            'email'=>'required',
        ]);
        if(auth()->guard('admin')->user() && !auth()->guard('admin')->user()->is_super)
        {
            $blogger = new Blogger;
            $blogger->name      = $request->name;
            $blogger->email     = $request->email;
            $blogger->password  = Hash::make('password');
            $blogger->save();
            return response()->json([
                'successd'=>true,
                'message'=>'Blogger Added Successfully'
            ]);
        }
        else{
            return response()->json([
                'successd'=>false,
                'message'=>'Unauthenticated'
            ]);
        }
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function show(Admin $admin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function edit(Admin $admin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Blogger $blogger)
    {
        $request->validate([
            'name'=>'required',
        ]);
        if(auth()->guard('admin')->user() && !auth()->guard('admin')->user()->is_super)
        {
            $blogger->name = $request->name;
            $blogger->save();
            return response()->json([
                'successd'=>true,
                'message'=>'Blogger updated Successfully'
            ]);
        }
        else{
            return response()->json([
                'successd'=>false,
                'message'=>'Unauthenticated'
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blogger $blogger)
    {
        if(auth()->guard('admin')->user() && !auth()->guard('admin')->user()->is_super)
        {
            $blogger->delete();
            return response()->json([
                'successd'=>true,
                'message'=>'User deleted Successfully'
            ]);
        }
        else{
            return response()->json([
                'successd'=>false,
                'message'=>'Unauthenticated'
            ]);
        }
    }
}
