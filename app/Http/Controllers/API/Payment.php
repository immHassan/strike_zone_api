<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\BaseController;
use App\Models\Payment as PaymentModel;
use App\Models\Payment_detail as PaymentDetailModel;
use App\Models\Student as StudentModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\TryCatch;
use Validator;
use Hash;

use Stripe;

class Payment extends BaseController
{




    public function invoices(Request $request, $student_id)
    {


        try {



            if ($student_id) {            

                $payments = PaymentModel::latest()->where('payment_status', 'enable')->where('Payment_customer_id', $student_id)-> get();
                $payment = [];
                foreach ($payments as $pay) {

                    $p = [];
                    $p['payment_id'] = $pay->payment_id;
                    $p['payment_amount'] = $pay->Payment_customer_amount;
                    $p['payment_type'] = $pay->Payment_type;
                    $p['payment_description'] = $pay->Payment_customer_description;
                    $p['payment_invoice_no'] = $pay->Payment_invoice_no;
                    $p['payment_detail'] =  $pay->payment_detail;
                    $p['payment_student_detail'] =  $pay->student;
                    $p['payment_created_at'] =  $pay->payment_created_at;
                    $payment[] = $p;    
                }


                return $this->sendResponse($payment, 'Fetched successfully');
            } else {


                return $this->sendError('student id is missing', 404);
            }
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }




    //    Paynow
    public function paynow(Request $request)
    {


        try {

            $validator = Validator::make($request->all(), [
                'stripe_response' => 'required',
                'student_id' => 'required|numeric',
                'payment_type' => 'required',
                'type_id' => 'required',
                'description' => 'required',
            ]);



            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors(), 404);
            }


            $student = StudentModel::where([['student_id', '=', $request->student_id]])->get();
            if (isset($student[0]->student_id)) {




                $input['Payment_customer_id'] = $request->student_id;
                $input['Payment_invoice_no'] = $request->stripe_response['id'];
                $input['Payment_customer_amount'] = $request->stripe_response['amount']/100;
                $input['Payment_type'] = $request->payment_type;
                $input['type_id'] = $request->type_id;
                $input['Payment_customer_description'] = $request->payment_description;
                $input['payment_object'] = json_encode($request->stripe_response);

                if($request->payment_type != "Product"){
                    $input['subscription_name'] = $request->productDetail['subscription_name'];  
                    $input['subscription_description'] = $request->productDetail['subscription_description'];  
                }

                $payment = PaymentModel::create($input);
                
                        
                if($request->payment_type == "Product"){
                $input2['payment_detail_product_duration'] = $request->productDetail['payment_detail_product_duration'];
                $input2['payment_detail_product_duration_type'] = $request->productDetail['payment_detail_product_duration_type'];
                $input2['payment_detail_product_image'] = $request->productDetail['payment_detail_product_image'];
                $input2['payment_detail_product_price'] = $request->productDetail['payment_detail_product_price'];
                $input2['payment_detail_product_title'] = $request->productDetail['payment_detail_product_title'];
                $input2['rental_date_from'] = date('Y-m-d H:i:s', strtotime($request->productDetail['rental_date_from']));
                $input2['rental_date_to'] = date('Y-m-d H:i:s', strtotime($request->productDetail['rental_date_to']));
                $input2['payment_id'] = $payment->payment_id;
                
                $paymentDetail = PaymentDetailModel::create($input2);
                

                }





                    if($payment){
                        return $this->sendResponse($request->stripe_response, 'Your payment has been successfully processed! Thank you.');

                    }else{
                        
                         return $this->sendError('Unable to save payment record.', $e, 404);
                    }


            } else {
                return $this->sendError('Unauthorised.', ['invalid' => 'Invalid student id.']);
            }

        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }


    public function create_payment_intent(Request $request)
    {



        try {

            $validator = Validator::make($request->all(), [
                'currency' => 'required',
                'amount' => 'required|numeric',
            ]);



            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors(), 404);
            }



            // Set your secret key. Remember to switch to your live secret key in production.
            // See your keys here: https://dashboard.stripe.com/apikeys
            \Stripe\Stripe::setApiKey('sk_test_51L7wGxLOY8hzG4LYkMLdMPGDOxx0nSnIBw9B9w1kQXeWsPSVG8Su8vtuNt3dXEfTRp0V1W3Tet7FOG6OHTHdKc8k00e4MgLIzu');

            $intent = \Stripe\PaymentIntent::create([
                'amount' => $request->amount * 100,
                'currency' => $request->currency,
            ]);
            $client_secret = $intent->client_secret;
            // Pass the client secret to the client



            return $this->sendResponse(array('intend' => $client_secret), 'Fetched successfully');
        } catch (Throwable $e) {
            return $this->sendError('Something went wrong.', $e, 404);
        }
    }
}
