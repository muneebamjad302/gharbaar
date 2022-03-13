@extends('app')

@section('body')
@if (auth()->guard('admin')->user())
  {{-- <div class="mb-3 float-end">
    <a href="/api/dashboard" class="btn btn-success btn-flat float-right" >home</a>
  </div> --}}

@elseif(auth()->guard('user')->user())


@elseif(auth()->guard('blogger')->user())
 

@else

<center><h1>Login</h1></center>

<form action="{{asset('api/admin/login')}}" method="POST" id="admin_login">
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
      <label for="login">Login As: </label>
      <select name="type">
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

  $('#admin_login').submit(function(e) {
    e.preventDefault()
    $.ajax({
        url:'/api/admin/login', method:"POST",
        data:{
          email:$('#email').val(),
          password:$('#password').val()
        }
      })
      .done(function(resp) {
        if(resp.error){
          $.confirm({
            icon: 'error',
            type: 'red',
            title: resp.error,
            buttons: {
                Ok:function(){
                  
                }
            }
          });
        }
        else{
          $.confirm({
            title: 'Login successfully',
            type:   'green',
            content: 'redirecting..',
          });
        }
      }).then(function(resp){
        console.log('2nd', resp)
        $.ajax({
          headers: { 
            Accept: 'application/json',
            Authorization: `Bearer `+ resp
          },
          url:'/api/dashboard', method:"GET",
          success: function() {
            window.location.reload()
          }
        })
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