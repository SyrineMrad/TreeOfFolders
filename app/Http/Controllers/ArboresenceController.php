<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Folder;

class ArboresenceController extends Controller {


    public function index(Request $request)
    {
       $folders = Folder::with('childs')->whereNull('parent_id')->where('name','!=',null)->get();
       $tree = Folder::where('parent_id', '=', null)
       ->get();
      return view('folders.index',compact('folders'),compact('tree'));

    }

    public function store(Request $request)
    {
        $folder=new Folder;
        if($request->file){ 
            $fileupload=$request->file('file');
            $filename=$fileupload->getClientOriginalName();
            $filepath=public_path('/files/');
            $fileupload->move($filepath,$filename);
            $folder->file=$filename;
        }
        $folder->name=$request->name;
        $folder->parent_id=$request->parent_id;
        $folder->save();
        return  redirect('arboresence');
  }

}