@extends('app')

@section('body')


<center><h1>All Blogs</h1></center>

<div >
    <table class="table" id="blogs_div">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Blogger Name</th>
            <th scope="col">Title</th>
            <th scope="col">Detail</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($blogs as $blog)
                <tr>
                    <th scope="row">{{$blog->id}}</th>
                    <td>{{$blog->blogger->name}}</td>
                    <td>{{$blog->title}}</td>
                    <td> 
                        <div class="btn-toolbar" role="toolbar">
                            <div class="btn-group" role="group">
                            <a href="{{asset('/blog/'.$blog->id.'/detail')}}" class="btn btn-success" >Details</a>
                            </div>
                        </div>
                    </td>
                </tr>   
            @endforeach
        </tbody>
    </table>
</div>

@endsection

@section('scripts')
<script>

$(document).ready( function () {
  
    
})
</script>


@endsection