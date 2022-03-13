<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use App\Models\Blogger;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Blog;
use App\Models\Admin;
use Hash;
use Validator;
use Auth;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogs= Blog::all();
        return view('blogger.blogs', compact('blogs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function blogDetail($id)
    {
        $blog=Blog::find($id);
        return view('blogger.blog-detail',compact('blog'));
    }

    public function blogStore(Request $request)
    {
        $request->validate([
            'blog_title'=>'required',
            'blog_description'=>'required',
        ]);
        $blog = new Blog;
        $blog->title       = $request->blog_title;
        $blog->description = $request->blog_description;
        $blog->blogger_id  = auth()->guard('blogger')->user()->id ;
        $blog->save();
        return response()->json([
            'successd'=>true,
            'message'=>'Blog Added Successfully'
        ]);
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

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Blogger  $blogger
     * @return \Illuminate\Http\Response
     */
    public function show(Blogger $blogger)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Blogger  $blogger
     * @return \Illuminate\Http\Response
     */
    public function edit(Blogger $blogger)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Blogger  $blogger
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Blogger $blogger)
    {
        $request->validate([
            'name'=>'required',
        ]);
        $blogger->name      = $request->name;
        $blogger->save();
        return response()->json([
            'successd'=>true,
            'message'=>'Blogger updated Successfully'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Blogger  $blogger
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blogger $blogger)
    {
        $blogger->blogs()->delete();
        $blogger->delete();
        return response()->json([
            'successd'=>true,
            'message'=>'User deleted Successfully'
        ]);
    }
}
