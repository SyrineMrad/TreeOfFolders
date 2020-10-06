  <div class="bs-example">
           
            <button type="button" class="btn btn-success mt-1 mb-2" id="folder">New Folder</button>
            <button type="button" class="btn btn-primary mt-1 mb-2" id="file">New File </button>

            <div id="myModal1" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">New Folder</h5>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form action="{{url('store')}}" method="post">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" name="name" id="name" requireed>
                                </div>
                                <div class="form-group">
                                    <label for="folder">Folder</label>
                                    <select class="form-control" name="parent_id">
                                        <option value="">No folders</option>
                                        @foreach ($folders as $folder)
                                        @if($folder->name)
                                        <option value="{{ $folder->id }}">{{ $folder->name }}</option>
                                        @endif
                                        @if(count($folder->childs))
                                        @include('folders.childsform',$folder)
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="sumbit" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            
            <div id="myModal2" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">New File</h5>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form action="{{url('store')}}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label for="folder">File</label>
                                    <input type="file" name="file" class="form-control" id="file" >
                                </div>
                                <div class="form-group">
                                    <label for="folder">Folder</label>
                                    <select class="form-control" name="parent_id">
                                        @foreach ($folders as $folder)
                                        <option value="{{ $folder->id }}">{{ $folder->name }}</option>
                                        @if(count($folder->childs))
                                        @include('folders.childsform',$folder)
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="sumbit" class="btn btn-primary">Save</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>