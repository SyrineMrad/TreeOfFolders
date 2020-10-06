@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-10">
        <div class="card">
            <h1 style="color: cadetblue;" class="text-center mb-2 mt-2">Tree of folders</h1>
            <div class="container">
                @include('folders.models')
                <div>
                    <div class="tree">
                        <ul>
                            @foreach($tree as $t)
                            <li><span><a style="color:#000; text-decoration:none;" data-toggle="collapse"
                                        href="#{{$t->name}}" aria-expanded="false" aria-controls="{{$t->name}}"><i
                                            class="collapsed"><i class="fas fa-folder"></i></i>
                                        @if($t->name)
                                        <i class="expanded"><i class="far fa-folder-open"></i></i>{{$t->name}}</a>
                                    @elseif($t->file)
                                    <i class="expanded"><i class="far fa-file"></i></i>{{$t->file}}</a>
                                    @endif
                                </span>
                                <ul>
                                    <div id="{{$t->name}}" class="collapse">
                                        @if(count($t->childs))
                                        @include('folders.childs',$t)
                                        @endif
                                </ul>

                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#folder").click(function () {
                $("#myModal1").modal('show');
            });
            $("#file").click(function () {
                $("#myModal2").modal('show');
            });
        });

    </script>
    @endsection
