<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use stdClass;
use Illuminate\Support\Facades\Auth;
use App\Events\BookBorrowed;
use Illuminate\Support\Facades\Log;

use App\Models\User;
use App\Models\Book;
use App\Models\BooksBorrowing;

class BookController extends Controller
{
    //
    public function index(){

    }

    public function getBooksList(Request $request){
        $data = [];        

        $page = $request->page ? $request->page : 1;
        $limit = 2;        
        $offset = (($page - 1) * $limit);

        $books = Book::select('id','bookname','status')->offset($offset)->limit($limit)->get();        
        if($books->isEmpty()){
            $response = ['success'=>false,'message'=>'No Book found','data'=>$data];
            return response()->json($response);
        }

        $data = $books;
        $response = ['success'=>true,'message'=>'','data'=>$data];

        return response()->json($response);
        
    }

    public function getBookInfo($id=0){
        $data = [];                
        $book = Book::select('id','bookname','status','description')->find($id);
        if(empty($book)){
            $response = ['success'=>false,'message'=>'Invalid Request','data'=>$data];
            return response()->json($response);
        }

        $data = $book;
        $response = ['success'=>true,'message'=>'','data'=>$data];

        return response()->json($response);
        
    }

    public function addNewBook(Request $request){
        $request->validate([
            //'bookid' => 'required',
            'bookname' => 'required',
            'action_type' => 'required|in:add,update',
        ]);

        $data = [];                                

        $bookid = $request->bookid ? $request->bookid : 0;
        $bookname = $request->bookname;
        $action_type = $request->action_type;

        if($action_type == 'add'){
            $exist = Book::where('bookname',$bookname)->exists();
            if($exist){
                $response = ['success'=>false,'message'=>'Book already available','data'=>$data];
                return response()->json($response);
            }

            $newBook = new Book;
            $newBook->bookname = $bookname;
            $newBook->save();

            $response = ['success'=>true,'message'=>'Book added!','data'=>$data];
        }
        
        if($action_type == 'update'){
            if($bookid <= 0){
                $response = ['success'=>false,'message'=>'Book id is missing','data'=>$data];
                return response()->json($response);    
            }
            $book = Book::find($bookid);                        
            $book->bookname = $bookname;
            $book->save();

            $response = ['success'=>true,'message'=>'Book Updated!','data'=>$data];
        }
        
        return response()->json($response);        
    }

    public function removeBook($id=0){
        if($id <= 0){
            $response = ['success'=>false,'message'=>'Invalid Request','data'=>[]];
            return response()->json($response);
        }

        $deleted = Book::where('id',$id)->delete();
        $response = ['success'=>false,'message'=>'Book Deleted!','data'=>[]];
        return response()->json($response);
    }

    public function borrowBook(Request $request){
        $request->validate([
            'bookid' => 'required',            
        ]);
        $data = []; 

        $authid = Auth::id();
        $bookid = $request->bookid;        
        $bookInfo = Book::find($bookid);        
        if($bookInfo == null || empty($bookInfo)){
            $response = ['success'=>false,'message'=>'Invalid Request!','data'=>$data];    
            return response()->json($response);
        }
        if($bookInfo->status != 'available'){
            $response = ['success'=>false,'message'=>'Book is not available for booking!','data'=>$data];    
            return response()->json($response);
        }

        $bookborrow = new BooksBorrowing();
        $bookborrow->user_id = $authid;
        $bookborrow->book_id = $bookid;
        $bookborrow->save();

        //Book::where('id',$bookid)->update(['status'=>'borrowed']);
        $myBook = Book::find($bookid);
        $myBook->status = 'borrowed';
        $myBook->save();

        /** send notification through event  */
        $userInfo = User::find($authid);        
        $bookingInfo = new stdClass();
        $bookingInfo->bookname = $myBook->bookname;
        $bookingInfo->username = $userInfo->firstname.' '.$userInfo->lastname;  
        $bookingInfo->flag = "borrow";          
        event(new BookBorrowed($bookingInfo));
        /** -------------------  */

        $response = ['success'=>true,'message'=>'Book borowed successfully!','data'=>$data];
        return response()->json($response);
    }

    public function returnBook(Request $request){
        $request->validate([
            'bookid' => 'required',            
        ]);
        $data = []; 

        $authid = Auth::id();
        $bookid = $request->bookid;  

        $bookborrow = BooksBorrowing::where(['book_id'=>$bookid,'user_id'=>$authid,'status'=>'borrowed'])->first();        
        if($bookborrow == null || empty($bookborrow)){
            $response = ['success'=>false,'message'=>'Invalid Request!','data'=>$data];
            return response()->json($response);    
        }        

        $bookborrow->status = 'returned';
        $bookborrow->returned_at = date('Y-m-d');        
        $bookborrow->save();

        //Book::where(['id'=>$bookid])->update(['status'=>'available']);   
        $myBook = Book::find($bookid);
        $myBook->status = 'available';
        $myBook->save();
        
        /** send notification through event  */        

        $userInfo = User::find($authid);        
        $bookingInfo = new stdClass();
        $bookingInfo->bookname = $myBook->bookname;
        $bookingInfo->username = $userInfo->firstname.' '.$userInfo->lastname;  
        $bookingInfo->flag = "return";          
        event(new BookBorrowed($bookingInfo));
        /** -------------------  */

        $response = ['success'=>true,'message'=>'Book returned successfully!','data'=>$data];
        return response()->json($response);

    }

}
