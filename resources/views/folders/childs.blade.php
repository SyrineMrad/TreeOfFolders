@foreach($t->childs as $arr)
@if($arr->name)
<li><span><a style="color:#000; text-decoration:none;" data-toggle="collapse" href="#{{$arr->name}}"
            aria-expanded="false" aria-controls="{{$arr->name}}"><i class="collapsed"><i class="fas fa-folder"></i></i>

            <i class="expanded"><i class="far fa-folder-open"></i></i>{{$arr->name}}</a></span>
    @elseif(($arr->file))
    <li><span><a style="color:#000; text-decoration:none;" href="{{ url('./files/'.$arr->file) }}"
            target="_blank"><i class="collapsed" ></i>
    <i class="expanded"><i class="far fa-file"></i></i>{{$arr->file}}</a></span>
    @endif
    <ul>
        <div id="{{$arr->name}}" class="collapse">
            @if(count($arr->childs))
            @include('folders.childs',['t' => $arr])
            @endif
    </ul>
</li>
@endforeach
