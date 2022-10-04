<?php

use App\Http\Controllers\API\Register;
use App\Http\Controllers\API\Student;
use App\Http\Controllers\API\Product;
use App\Http\Controllers\API\Subscription;
use App\Http\Controllers\API\Classes;
use App\Http\Controllers\API\Payment;
use App\Http\Controllers\API\Gallery;




use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



// Route::post('register', [Register::class, 'register']);
// Route::post('login', [Register::class, 'login']);


Route::post('student/login', [Student::class, 'login']);
Route::post('student/register', [Student::class, 'register']);
Route::put('student/password', [Student::class, 'update_password']);
Route::put('student/profile', [Student::class, 'update_profile']);
Route::post('student/profile-picture', [Student::class, 'update_profile_picture']);
Route::post('student/forget-password', [Student::class, 'forget_password']);
Route::post('student/reset-password', [Student::class, 'reset_password']);
Route::post('student/send-otp', [Student::class, 'send_otp']);
Route::post('student/verify-otp', [Student::class, 'verify_otp']);
Route::post('student/login_update', [Student::class, 'login_update']);


Route::post('student/social-login', [Student::class, 'social_login']);



Route::get('gallery/images', [Gallery::class, 'images']);
Route::get('gallery/videos', [Gallery::class, 'videos']);




Route::get('product', [Product::class, 'index']);
Route::post('product/availability', [Product::class, 'availability']);

Route::get('subscription', [Subscription::class, 'index']);
Route::get('classes/{student_id}', [Classes::class, 'index']);
Route::post('paynow', [Payment::class, 'paynow']);
Route::post('create-payment-intent', [Payment::class, 'create_payment_intent']);
Route::get('invoices/{student_id}', [Payment::class, 'invoices']);




// Route::middleware(['auth:sanctum'])->get('/user', function (Request $request) {
//     return $request->user();
// });
