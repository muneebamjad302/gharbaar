@extends('app')

@section('body')

@if (auth()->guard('admin')->user())
  <div class="mb-3 float-end">
    <a href="/api/dashboard" class="btn btn-success btn-flat float-right" >home</a>
  </div>

@elseif(auth()->guard('user')->user())

  <div class="mb-3 float-end">
    <a href="/api/dashboard" class="btn btn-success btn-flat float-right" >home</a>
  </div>

@elseif(auth()->guard('blogger')->user())
  <div class="mb-3 float-end">
    <a href="/api/dashboard" class="btn btn-success btn-flat float-right" >home</a>
  </div>

@else

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand btn btn-info" href="/" >User Login</a>
  <a class="navbar-brand btn btn-info" href="/admin/login" >Admin Login</a>
  <a class="navbar-brand btn btn-info" href="/blogger/login" >Blogger Login</a>
</nav>

<center><h1>User Login </h1></center>

<form action="{{asset('api/user/login')}}" method="POST">
    @csrf
    <div class="form-group">
      <label for="email">Email address:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
@endif
@endsection