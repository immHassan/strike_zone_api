<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Models\Student as StudentModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\TryCatch;
use Validator;
use Hash;

class Student extends BaseController
{
    public function register(Request $request)
    {


        try {

            $validator = Validator::make($request->all(), [
                'student_name' => 'required',
                'student_email' => 'required|email|unique:student',
                'student_phone' => 'required|numeric',
                'student_password' => 'required|min:8',
                'confrim_password' => 'required|same:student_password',
            ]);



            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors(), 404);
            }

            $request->request->remove('confrim_password');
            $input = $request->all();
            $input['student_password'] = hash('sha256', $input['student_password']);
            $user = StudentModel::create($input);
            $success['token'] =  $user->createToken('sz')->plainTextToken;
            $success['name'] =  $user->student_name;
            $success['email'] =  $user->student_email;
            $success['phone'] =  $user->student_phone;
            $success['user_image'] =  $user->user_image;

            return $this->sendResponse($success, 'Your account has been created successfully.');
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }

    /**l
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
    
    
    
     public function social_login(Request $request)
    {


        $validator = Validator::make($request->all(), [
            'student_name' => 'required',
            'student_email' => 'required|email',
            'social_token' => 'required',
            'social_token_type' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors(), 404);
        }

        $student = StudentModel::where([['social_token', '=', $request->social_token], ['social_token_type', '=', $request->social_token_type]])->get();

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
            
            
            
            
            $data['student_name'] = $request->student_name;
            $data['student_email'] = $request->student_email;
            $data['social_token'] = $request->social_token;
            $data['social_token_type'] = $request->social_token_type;
            
            
            $user = StudentModel::create($data);
            $success['token'] =  $user->createToken('sz')->plainTextToken;
            $success['student_id'] =  $user->student_id;
            $success['name'] =  $user->student_name;
            $success['email'] =  $user->student_email;
            $success['phone'] =  $user->student_phone;
            $success['address'] =  $user->student_address;
            $success['user_image'] =  $user->user_image;
            
            

            return $this->sendResponse($success, 'Login Successful.');
            
            
            
            return $this->sendError('Unauthorised.', ['invalid' => 'Invalid email or password']);
        }
    }
    
    
    
    
      public function login_update(Request $request)
    {


        $validator = Validator::make($request->all(), [
            'student_id' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors(), 404);
        }

        $student = StudentModel::where([['student_id', '=', $request->student_id]])->get();

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
            return $this->sendError('Unauthorised.', ['invalid' => 'Invalid student id']);
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
    
    
    

    
    
    
     public function forget_password(Request $request){
         
         
           try {

            $validator = Validator::make($request->all(), [
                'student_email' => 'required|email',
            ]);


            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors(), 404);
            }
            
            
            
    
                $student = StudentModel::where('student_email',$request->student_email)->first();
                if($student){
                    
                 // $student->user_rest_token = hash('sha256', $request->email);
                     $student->user_rest_token = 1111;
 
                      $student->save();
                  
                      return response()->json(["success" => true, "msg" => 'Reset password link sent on your email id.']);
        
                }else{
                    return $this->sendError('Invalid credentials.', 404);
                }
                
            
            
           }  catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }
    
    
    public function  reset_password(Request $request){
        
        
        
        
       try {                    
           
           
                       $validator = Validator::make($request->all(), [
                            'student_email' => 'required|email',
                            'token' => 'required',
                            'student_password' => 'required|min:8',
                            'confrim_password' => 'required|same:student_password',
                        ]);
            
            
                
                
                        if ($validator->fails()) {
                            return $this->sendError('Validation Error.', $validator->errors(), 404);
                        }
                        
                        
                
                        $student = StudentModel::where('student_email',$request->student_email)->first();
                        if(!$student){
                            return response()->json(["msg" => "Invalid student email."], 400);
                        }
                        
                        $studentTokenCheck = StudentModel::where([['student_email', '=', $request->student_email], ['user_rest_token', '=',  $request->token]])->get();
                        if(!$studentTokenCheck){
                            return response()->json(["msg" => "Invalid token provided."], 400);
                        }
                        
                
                        
                         $studentTokenCheck->student_password = hash('sha256', $request->student_password);
                         $studentTokenCheck->user_rest_token = '';
                         $student->save();
                                      
                              
                
                        return response()->json(["msg" => "Password has been successfully changed"]);
                        
        
        }  catch (Throwable $e) {
                return $this->sendError('Something went wrong.', $e, 404);
        }
        
    }
    
    
    
    
     public function send_otp(Request $request){
         
         
           try {

            $validator = Validator::make($request->all(), [
                'student_id' => 'required',
            ]);


            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors(), 404);
            }
            
            
            
    
                $student = StudentModel::where('student_id',$request->student_id)->first();
                if($student){
                     $student->otp = 0000;
                     $student->save();
                     return response()->json(["success" => true, "msg" => 'OTP has sent to your email, please check your email.']);
                }else{
                    return $this->sendError('Invalid student id.', 404);
                }
                
            
            
           }  catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }
    
    
    
    
    
    
    
    
    public function  verify_otp(Request $request){
        
       try {                    
           
           $validator = Validator::make($request->all(), [
                'otp' => 'required',
                'student_id' => 'required',
            ]);


    
    
            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors(), 404);
            }
            
            
    
            $student = StudentModel::where('student_id',$request->student_id)->first();
            if(!$student){
                return response()->json(["msg" => "Invalid student id."], 400);
            }
            
            
              $student = StudentModel::where('otp',$request->otp)->first();
            if(!$student){
                return response()->json(["msg" => "Invalid OTP provided."], 400);
            }
            
            
                 $student->otp = null;
                 $student->save();
                return response()->json(["msg" => "Verification successful." , 'success' => true]);
           
            
        }  catch (Throwable $e) {
                return $this->sendError('Something went wrong.', $e, 404);
        }
        
    }
    
    
    






    
        public function update_profile_picture(Request $request)
    {

              
        try {

            
            
              if(!$request->hasFile('image')) {
                    return response()->json( array('success' => false, 'message' =>'upload file not found') , 404);
              }
                
            $student = StudentModel::where([['student_id', '=', $request->student_id]])->first();
            
            
            
            if($student){
                
                            $student_ = StudentModel::where([['student_id', '=', $request->student_id]])->first();  

                            $file= $request->file('image');
                            $filename= date('YmdHi').$file->getClientOriginalName();
                            $file-> move(public_path('../../strike_zone/uploads/student/'), $filename);
                                          

                            $student->user_image = $filename;    
                            $student->save();
                            return $this->sendResponse([], 'Your image has been updated successfully.');
                        
                        
            }else{
                return $this->sendError('Invalid student id.', 404);
            }
            
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }
    
    
    
    
          public function update_profile(Request $request)
    {

        try {
            
 
            $student = StudentModel::where([['student_id', '=', $request->student_id]])->first();
            
            if($student){

           $student_ = StudentModel::where([['student_email', '=', $request->student_email]])->first();
            
            if($student_){
                        if($student_->student_email != $request->student_email){
                          return $this->sendError("Sorry, student with the same email already exist.", 404);
                        }
            }
            
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
