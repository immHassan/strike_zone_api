<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Models\Gallery as galleryModel;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\TryCatch;
use Validator;
use Hash;

class Gallery extends BaseController
{
    public function images(Request $request)
    {
        try {
            $images = galleryModel::all()->where('gallery_status','enable');
            
            
            
            
             $img_ = [];
                foreach($images as $img){
                    $img_[] = $img;
                }
            
            return $this->sendResponse($img_, 'Fetched successfully');
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }

    public function videos(Request $request)
    {
        try {
            $images = galleryModel::all()->where('gallery_status','enable');
            return $this->sendResponse($images, 'Fetched successfully');
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }
    
  
    
    
    
    
    
    
    
}
