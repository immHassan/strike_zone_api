<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Models\Student as StudentModel;
use App\Models\Product as productModel;
use App\Models\Category as categoryModel;
use App\Models\Subscription as subscriptionModel;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\TryCatch;
use Validator;
use Hash;

class Subscription extends BaseController
{
    public function index(Request $request)
    {
        try {
            $subscription = subscriptionModel::all()->where('subscription_status','enable');
            return $this->sendResponse($subscription, '');
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }

    /**
     * Login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {


        $validator = Validator::make($request->all(), [
            'student_email' => 'required|email',
            'student_password' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors(), 404);
        }

        $student = StudentModel::where([['student_email', '=', $request->student_email], ['student_password', '=', hash('sha256', $request->student_password)]])->get();

        if (isset($student[0]->student_id)) {
            $student = StudentModel::find($student[0]->student_id);
            $success['token'] =  $student->createToken('sz')->plainTextToken;
            $success['student_id'] =  $student->student_id;
            $success['name'] =  $student->student_name;
            $success['email'] =  $student->student_email;
            $success['phone'] =  $student->student_phone;
            $success['address'] =  $student->student_address;
            $success['user_image'] =  $student->user_image;
            
            return $this->sendResponse($success, 'Login Successful.');
        } else {
            return $this->sendError('Unauthorised.', ['invalid' => 'Invalid email or password']);
        }
    }
    
    
        public function update_password(Request $request)
    {

        try {

            $validator = Validator::make($request->all(), [
                'current_password' => 'required',
                'new_password' => 'required|min:8',
                'confirm_password' => 'required|same:new_password',
                'student_id' => 'required',
            ]);


            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors(), 404);
            }
            
            $student = StudentModel::where([['student_id', '=', $request->student_id], ['student_password', '=', hash('sha256', $request->current_password)]])->first();
            if($student){
              $student->student_password = hash('sha256', $request->new_password);
              $student->save();
              
              return $this->sendResponse([], 'Your password has been updated successfully.');
    
            }else{
                return $this->sendError('Invalid credentials.', 404);
            }
            
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }
    
    
    
          public function update_profile(Request $request)
    {

        try {
            
            $student = StudentModel::where([['student_email', '=', $request->student_email]])->first();
            if($student){ 
              return $this->sendError('Student with the same email already exist.', 404);
            }

            $student = StudentModel::where([['student_id', '=', $request->student_id]])->first();
            
            if($student){

              $student->student_name = $request->student_name;
              $student->student_email = $request->student_email;
              $student->student_phone = $request->student_phone;
              $student->student_address = $request->student_address;              
              $student->save();
            
              return $this->sendResponse([], 'Your profile has been updated successfully.');
            
            }else{

                return $this->sendError('Invalid student id.', 404);
            }
            

        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }
    
    
    
    
    
    
    
    
    
}
