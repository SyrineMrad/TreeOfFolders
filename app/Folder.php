<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Folder extends Model
{
   public function childs() {
    return $this->hasMany('App\Folder','parent_id','id') ;
}

}
