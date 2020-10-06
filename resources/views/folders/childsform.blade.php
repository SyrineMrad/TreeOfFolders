@foreach($folder->childs as $arr)
@if($arr->name)
    <option value="{{ $arr->id }}">{{ $arr->name }}</option>
            @if(count($arr->childs))
            @include('folders.childsform',['folder' => $arr])
            @endif

    @endif        
@endforeach
