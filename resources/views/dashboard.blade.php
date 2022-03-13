@extends('app')

@section('body')

{{-- {{session('token') }} --}}
{{-- {{auth()->guard('admin')->user()}} --}}
@php $check_for_admin=0; @endphp
@if (auth()->guard('admin')->user() && auth()->guard('admin')->user()->is_super)

<div class="admin_data" class>
    <center><h1>All User</h1></center>
    <div class="mb-3 float-end">
        <button class="btn btn-primary btn-flat add-btn" data-toggle="modal" data-target="#modal-lg">Add New User</button>
        <form action="post" class="admin-logout">
            <button  class="btn btn-danger btn-flat float-right" type="submit" >logout</button>
        </form>
    </div>
    
    <div>
        <table class="table" id="users_div">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Created_at</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <th scope="row">{{$user->id}}</th>
                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->created_at}}</td>
                        <td> 
                            <div class="btn-toolbar" role="toolbar">
                                <div class="btn-group" role="group">
    
                                <button class="btn btn-success edit-btn" data-toggle="modal" data-target="#modal-lg" data-id="{{$user->id}}" user-name="{{$user->name}}" user-email="{{$user->email}}">Edit</button>
                                  <form action="{{asset('/user/'.$user->id)}}" method="POST" id="delete_item" onsubmit='deleteItem({{$user->id}})'>
                                    @csrf
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                  </form>
    
                                    {{-- <a href="{{asset('/user/'.$user->id.'/edit')}}" class="btn btn-primary"> Edit </a>
                                    <form action="{{asset('/user/'.$user->id)}}" method="post">
                                        @csrf @method('DELETE')
                                        <button type="submit" class="btn btn-danger"> Delete </a>
                                    </form> --}}
        
                                </div>
                            </div>
                        </td>
                    </tr>   
                @endforeach
            </tbody>
        </table>
    </div>
    
        
</div>

 

@elseif(( $check_for_admin = auth()->guard('admin')->user() && !auth()->guard('admin')->user()->is_super) ||  auth()->guard('user')->user())

<div class="users_data">

    <center><h1>All Bloggers</h1></center>
    <div class="mb-3 float-end">
        <button class="btn btn-primary btn-flat add-btn" data-toggle="modal" data-target="#blogger-modal-lg">Add New Blogger</button>
        @if(auth()->guard('admin')->user())
        <form action="post" class="admin-logout">
            <button  class="btn btn-danger btn-flat float-right" type="submit" >logout</button>
        </form>
        @else
            <form action="post" class="user-logout">
                <button  class="btn btn-danger btn-flat float-right" type="submit" >logout</button>
            </form>
        @endif
    </div>

    <div>
        <table class="table" id="bloggers_div">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Created_at</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($bloggers as $blogger)
                    <tr>
                        <th scope="row">{{$blogger->id}}</th>
                        <td>{{$blogger->name}}</td>
                        <td>{{$blogger->email}}</td>
                        <td>{{$blogger->created_at}}</td>
                        <td> 
                            <div class="btn-toolbar" role="toolbar">
                                <div class="btn-group" role="group">

                                    <button class="btn btn-success edit-btn-blogger" data-toggle="modal" data-target="#blogger-modal-lg" data-id="{{$blogger->id}}" blogger-name="{{$blogger->name}}" blogger-email="{{$blogger->email}}">Edit</button>
                                    <form action="{{asset('/blogger/'.$blogger->id)}}" method="POST" id="delete_blogger" onsubmit='deleteblogger({{$blogger->id}})'>
                                      @csrf
                                      <button type="submit" class="btn btn-danger">Delete</button>
                                    </form>

                                </div>
                            </div>
                        </td>
                    </tr>   
                @endforeach
            </tbody>
        </table>
    </div>

</div>

@elseif(auth()->guard('blogger')->user())

<div class="bloggers_data">

    <center><h1>Add blog</h1></center>
    <div class="mb-3 float-end">
        <form action="post" class="blogger-logout">
            <button  class="btn btn-danger btn-flat float-right" type="submit" >logout</button>
        </form>
    <div class="div">
        <form  id="blog">
            <div class="form-group">
                <label for="title">Title</label>
                <textarea class="form-control" id="blog_title" name="blog_title" rows="2"></textarea>
            </div>
    
            <div class="form-group">
              <label for="description">Description</label>
              <textarea class="form-control" id="blog_description" name="blog_description" rows="5"></textarea>
            </div>
    
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-flat btn-block">Save</button>
                    </div>
                </div>
            </div>
    
          </form>
    </div>
</div>

@else

<div class="mb-3 login_data">
    <span>you are not logged in </span><br>
    <a href="/" >click here to login </a> <br>
  
</div>

@endif



<div class="modal fade" id="modal-lg">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Add User</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <input type="hidden" name="insert" id="insert" value="1">
            <input type="hidden" name="wid" id="wid">
            <form method="post" id="user_form">
                {{-- @csrf --}}
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label for="my-input">Name</label>
                            <input type="text" class="form-control" name="user_name" id="user_name" placeholder="Enter User name">
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="form-group">
                            <label for="my-input">Email</label>
                            <input type="text" class="form-control" name="user_email" id="user_email" placeholder="Enter User email">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-flat btn-block">Save</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
      </div>
    </div>
</div>


{{-- blogger --}}
<div class="modal fade" id="blogger-modal-lg">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Add Blogger</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <input type="hidden" name="blogger_insert" id="blogger_insert" value="1">
            <input type="hidden" name="blogger_wid" id="blogger_wid">
            <form method="post" id="blogger_form">
                {{-- @csrf --}}
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label for="my-input">Name</label>
                            <input type="text" class="form-control" name="blogger_name" id="blogger_name" placeholder="Enter Blogger name">
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="form-group">
                            <label for="my-input">Email</label>
                            <input type="text" class="form-control" name="blogger_email" id="blogger_email" placeholder="Enter Blogger email">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-flat btn-block">Save</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
      </div>
    </div>
</div>



@endsection

@section('scripts')
<script>

$(document).ready( function () {
    $('#users_div').DataTable();
    $('#bloggers_div').DataTable();
    $('#blog_description').summernote();
    var auth_token=localStorage.getItem("auth_token");
    $.ajaxSetup({
        headers: { 
            Accept: 'application/json',
            Authorization:'Bearer '+ auth_token
        }
    });

        $('.edit-btn').click(function(event) {
            event.preventDefault();
            $('#insert').val("0");
            $('#wid').val($(this).attr("data-id"));
            $('#user_name').val($(this).attr("user-name"));
            $('#user_email').val($(this).attr("user-email"));
        })  

        $('.add-btn').click(function(event) {
            event.preventDefault();
            $('#insert').val("1");
        })


        $('.user-logout').submit(function(e) {
            e.preventDefault()
            $.ajax({
               url:'/api/user/logout', method:"POST",
               headers:{
                Accept: 'application/json',
                Authorization:'Bearer '+ auth_token
               }
            //    dataType:'JSON', contentType: false, cache: false, processData: false,
              })
              .done(function(resp) {
                localStorage.removeItem('auth_token');
                $.confirm({
                    title: 'Caution!',
                    type:   'green',
                    content: resp.message,
                    buttons: {
                        Ok: function () {
                            window.location.href = "/";
                        },   
                    }
                });
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


        $('.admin-logout').submit(function(e) {
            e.preventDefault()
            $.ajax({
               url:'/api/admin/logout', method:"POST", data:{}
            //    dataType:'JSON', contentType: false, cache: false, processData: false,
              })
              .done(function(resp) {
                localStorage.removeItem('auth_token');
                $.confirm({
                    title: 'Caution!',
                    type:   'green',
                    content: resp.message,
                    buttons: {
                        Ok: function () {
                            window.location.href = "/";
                        },   
                    }
                });
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


        $('.blogger-logout').submit(function(e) {
            e.preventDefault()
            $.ajax({
               url:'/api/blogger/logout', method:"POST", data:{}
            //    dataType:'JSON', contentType: false, cache: false, processData: false,
              })
              .done(function(resp) {
                localStorage.removeItem('auth_token');
                $.confirm({
                    title: 'Caution!',
                    type:   'green',
                    content: resp.message,
                    buttons: {
                        Ok: function () {
                            window.location.href = "/";
                        },   
                    }
                });
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


        $('#user_form').on('submit', function(event){
            event.preventDefault();
            var formData = {
                name:$('#user_name').val(),
                email:$('#user_email').val()
            };
            var url = `/api/user`;
            var method= `POST`
            if($('#insert').val().localeCompare("0") == 0) {
                url = `/api/user/${$('#wid').val()}`;
                method= `PATCH`
            }

             $.ajax({
               url:url, method:method, data:formData,
            //    dataType:'JSON', contentType: false, cache: false, processData: false,
              })
              .done(function(resp) {
                $.confirm({
                    title: 'Caution!',
                    type:   'green',
                    content: resp.message,
                    buttons: {
                        Ok: function () {
                        window.location.reload();
                        },   
                    }
                });
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



function deleteItem(id)
    {
        event.preventDefault();
        $.confirm({
            title: 'Caution!',
            type:   'red',
            content: 'Do you want to delete this ?',
            buttons: {
            Yes: function () {
                return $.ajax({
                url:'/api/user/'+id,
                method:"Delete",
                // dataType:'JSON', contentType: false, cache: false, processData: false,
            })
            .done(function(resp) {
                if(resp.successd) {
                        $.confirm({
                        title: 'Caution!',
                        type:   'green',
                        content: resp.message,
                        buttons: {
                            Ok: function () {
                                window.location.reload();
                            },   
                        }
                    });
                }
               
            })
            .fail(function(err) {
                var message = "";
                var errors = $.parseJSON(err.responseText).errors ;
                  var keys = Object.keys($.parseJSON(err.responseText).errors); var i;
                  for (i = 0; i < keys.length; ++i) {
                    message +=errors[keys[i]][0]+"\n";
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
            },
            No: function () {
                return;
            },

            }
        })

    }
</script>

{{-- Bloggers --}}

<script>

    $(document).ready( function () {
            var check_for_admin = "{{$check_for_admin}}"
            $('.edit-btn-blogger').click(function(event) {
                event.preventDefault();
                $('#blogger_insert').val("0");
                $('#blogger_wid').val($(this).attr("data-id"));
                $('#blogger_name').val($(this).attr("blogger-name"));
                $('#blogger_email').val($(this).attr("blogger-email"));
            })  
    
            $('.add-btn-blogger').click(function(event) {
                event.preventDefault();
                $('#blogger_insert').val("1");
            })
    
            $('#blogger_form').on('submit', function(event){
                event.preventDefault();
                var formData = {
                    name:$('#blogger_name').val(),
                    email:$('#blogger_email').val()
                };
                if(check_for_admin){
                    var url = `/api/admin/blogger`;
                }else{
                    var url = `/api/blogger`;
                }
                
                var method= `POST`
                if($('#blogger_insert').val().localeCompare("0") == 0) {
                    if(check_for_admin){
                        url = `/api/admin/blogger/${$('#blogger_wid').val()}`;
                    }else{
                        url = `/api/blogger/${$('#blogger_wid').val()}`;
                    }
                    method= `PATCH`
                }
    
                 $.ajax({
                   url:url, method:method, data:formData,
                  })
                  .done(function(resp) {
                    $.confirm({
                        title: 'Caution!',
                        type:   'green',
                        content: resp.message,
                        buttons: {
                            Ok: function () {
                            window.location.reload();
                            },   
                        }
                    });
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

            $('.add-btn-blogger').click(function(event) {
                event.preventDefault();
                $('#blogger_insert').val("1");
            })
            //blog

            $('#blog').on('submit', function(event){
            event.preventDefault();
            var formData = {
                blog_title:$('#blog_title').val(),
                blog_description:$('#blog_description').val()
            };
            var url = `/api/blog/store`;
            var method= `POST`

             $.ajax({
               url:url, method:method, data:formData,
              })
              .done(function(resp) {
                $.confirm({
                    title: 'Caution!',
                    type:   'green',
                    content: resp.message,
                    buttons: {
                        Ok: function () {
                        window.location.reload();
                        },   
                    }
                });
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
    
    
    
    function deleteblogger(id)
        {
            event.preventDefault();
            var url;
            var check_for_admin = "{{$check_for_admin}}" 
            if (check_for_admin){
                url='/api/admin/blogger/'+id
            } else {
                url='/api/blogger/'+id
            }
            $.confirm({
                title: 'Caution!',
                type:   'red',
                content: 'Do you want to delete this ?',
                buttons: {
                Yes: function () {

                    return $.ajax({
                    url:url,
                    method:"Delete",
                    // dataType:'JSON', contentType: false, cache: false, processData: false,
                })
                .done(function(resp) {
                    if(resp.successd) {
                            $.confirm({
                            title: 'Caution!',
                            type:   'green',
                            content: resp.message,
                            buttons: {
                                Ok: function () {
                                    window.location.reload();
                                },   
                            }
                        });
                    }
                   
                })
                .fail(function(err) {
                    var message = "";
                    var errors = $.parseJSON(err.responseText).errors ;
                      var keys = Object.keys($.parseJSON(err.responseText).errors); var i;
                      for (i = 0; i < keys.length; ++i) {
                        message +=errors[keys[i]][0]+"\n";
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
                },
                No: function () {
                    return;
                },
    
                }
            })
    
        }
    </script>


@endsection