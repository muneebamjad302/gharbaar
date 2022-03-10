@extends('app')

@section('body')



<center><h1>{{$blog->title}}</h1></center>

<div >
    {!! $blog->description !!}
</div>

<center><h4>Author: {{$blog->blogger->name}}</h4></center>

@endsection

@section('scripts')
<script>

$(document).ready( function () {
  
    
})
</script>


@endsection