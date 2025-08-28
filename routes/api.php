<?php

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

use App\Http\Controllers\API\UsersController;
use App\Http\Controllers\API\BookController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
*/

Route::middleware(['auth:sanctum'])->group(function () {

    Route::post('/listbooks', [BookController::class, 'getBooksList']);
    Route::get('/bookdetail/{id}', [BookController::class, 'getBookInfo']);
    Route::post('/addbook', [BookController::class, 'addNewBook'])->middleware('permission:create books|edit books');
    Route::get('/deletebook/{id}', [BookController::class, 'removeBook'])->middleware('permission:delete books');

    Route::post('/borrowbook', [BookController::class, 'borrowBook']);
    Route::post('/returnbook', [BookController::class, 'returnBook']);    
});

Route::post('/signup', function (Request $request) {
    $request->validate([
        'firstname' => 'required',
        'lastname' => 'required',
        //'type' => 'required|in:user',
        'email' => 'required|email',        
        'password' => 'required',        
    ]);
    //dd("here");

    //$emailExist = User::where('email', $request->email)->count();  
    $emailExist = User::where('email', $request->email)->exists();  

    if($emailExist == 1){
        $response = array('success'=>false,'message'=>'Email already exists!','data'=>[]);
        return response()->json($response);
    }

    $hashedPassword = Hash::make($request->password);
    $newUser = User::create([
        'firstname' => $request->firstname,
        'lastname' => $request->lastname,
        'email' => $request->email,
        'password' => $hashedPassword,
    ]);

    $newUser->assignRole('User');

    $response = array('success'=>true,'message'=>'Registered Succesfully!','data'=>[]);

    return response()->json($response);

});

Route::post('/signin', function (Request $request) {    

    $request->validate([
        'email' => 'required|email',
        'password' => 'required',        
    ]);    
    //dd($request->password);
    $user = User::where('email', $request->email)->first();    
     
    if (! $user || ! Hash::check($request->password, $user->password)) {
                
        $data = array();        
        $response = array('status'=>false,'message'=>'Incorrect Email or Password','data'=>$data);
        return response()->json($response);

    }
 
    //return $user->createToken('')->plainTextToken;
    $token = $user->createToken('',['*'],now()->addMinutes(180))->plainTextToken;
    $response = array('status'=>true,'message'=>'Logged In Succesfully!','token'=>$token,'data'=>[]);
    return response()->json($response);
});