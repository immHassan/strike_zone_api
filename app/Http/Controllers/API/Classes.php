<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Models\Student as StudentModel;
use App\Models\Product as productModel;
use App\Models\Category as categoryModel;
use App\Models\Class_student as classStudentModel;
use App\Models\Classes as classesModel;






use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\TryCatch;
use Validator;
use Hash;
use DateTime;
use DateInterval;
use DatePeriod;






class Classes extends BaseController
{
    
    
        
        
    
    function classes_days($month, $year, $days)
    {
        $dates_array = [];
        $timestamp    = strtotime($month.' '. $year);
        $first_second = date('Y-m-01', $timestamp);
        $last_second  = date('Y-m-t', $timestamp); // A leap year!
        $date = new DateTime();
        $period = new DatePeriod(
            new DateTime($first_second),
            new DateInterval('P1D'),
            new DateTime($last_second)
        );
        $classes_days = $days;
        foreach ($period as $key => $value) {
            foreach ($classes_days as $val) {
                $day = '';
                if ($val == 1) {
                    $day = 'Mon';
                } else if ($val == 2) {
                    $day = 'Tue';
                } else if ($val == 3) {
                    $day = 'Wed';
                } else if ($val == 4) {
                    $day = 'Thu';
                } else if ($val == 5) {
                    $day = 'Fri';
                } else if ($val == 6) {
                    $day = 'Sat';
                } else if ($val == 7) {
                    $day = 'Sun';
                } else {
                    continue;
                }
                if ($value->format('D') == $day) {
                    $dates_array[] = $value->format('Y-m-d');
                }
            }
        }
    
        return $dates_array;
    }
    


    public function index(Request $request,$student_id)
    {
        

        try {
            
            
            
             $student  = StudentModel::find(48);
            
            $classes = []; 
            if($student->classes){
                
                $i =0;
                foreach($student->classes as $class){
                    
                    
                    $class = classesModel::find($class->class_student_class_id);
                    
                    
                    if(isset($class->classes_working_days)){
                        
                           $arr = $this->classes_days('August', '2022', json_decode($class->classes_working_days));
                       
                    if($arr){
                        
                      
                        
                             foreach($arr as $a){
                                 
                                $class_['class_title'] = $class->classes_title;
                                $class_['classes_description'] = $class->classes_description;
                                $class_['classes_start_time'] = $class->classes_start_time;
                                $class_['classes_end_time'] = $class->classes_end_time;
                                $class_['classes_working_days'] = $a;
                                    
                               $classes[] = $class_;
                            }

                    }
                    }
                    
                    $i++;
                }
                
            }
            return $this->sendResponse($classes, '');
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
