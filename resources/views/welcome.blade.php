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

<center><h1>Login</h1></center>

<form action="{{asset('api/login')}}" method="POST" id="login">
    @csrf
    <div class="form-group">
      <label for="email">Email address:</label>
      <input type="email" class="form-control" placeholder="Enter email" name="email" id="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password" id="password">
    </div>
    <div class="form-group">
      <label for="pwd">Login As: </label>
      <select name="type" id="type">
        <option  value="user">User</option>
        <option  value="admin">Admin</option>
        <option  value="blogger">Blogger</option>
      </select>
    </div>
 
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
  
@endif
    
@endsection


@section('scripts')
<script>

$(document).ready( function () {

  $('#login').submit(function(e) {
    e.preventDefault()
    $.ajax({
        url:'/api/login', method:"POST",
        data:{
          email:$('#email').val(),
          password:$('#password').val(),
          type:$('#type').val()
        }
      })
      .done(function(resp) {
        if(resp.error){
          $.confirm({
            icon: 'error',
            type: 'red',
            title: resp.error,
            buttons: {
               Ok: function () {
                  window.location.reload();
               },  
            }
          });
        }
        else{
         
         $.alert('Login Successfully ! \n redirecting...');
          localStorage.setItem("auth_token", resp);
          window.location.href='/api/dashboard'
        }
      })
      .fail(function(err) {
        var message = "";
        var errors = $.parseJSON(err.responseText).errors ;
        var keys = Object.keys($.parseJSON(err.responseText).errors); var i;
        for (i = 0; i < keys.length; ++i) {
          message +=errors[keys[i]][0]+" \n";
        }
        $.confirm({
            icon: 'error',
            type: 'red',
            title: message,
            buttons: {
                Ok:function(){
                    return
                }
            }
        });
      });
  })
});


</script>



@endsection