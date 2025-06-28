<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
//use App\Models\Student;
use App\Models\User;
use App\Models\UserFile;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{
    //
    public function index(){         

        $pageData = [];
        return view('admin.users.list',['pageData'=>$pageData]);
    }

    public function getUserFiles(Request $request){
        $credentials = $request->validate([
            'userid' => ['required', 'numeric'],            
        ]);
        
        $userid = $request->userid;        
        //$allfiles = User::find($userid);       // lazy load
        $allfiles = User::with('files')->find($userid);    // eager load    
        
        $modalBody = "";
        $modalBody = view('admin.users.fileinfo',['pageData'=>$allfiles])->render();        

        $apiData = ['modalBody'=>$modalBody];
        $response = ['success'=>true,'message'=>'','data'=>$apiData];
        
        return response()->json($response);
        
    }

    public function getUserDetail(Request $request){
        $credentials = $request->validate([
            'userid' => ['required', 'numeric'],            
        ]);


        //$authid = Auth::id(); 
        $userid = $request->userid;
        $userInfo = User::find($userid);
        $modalBody = view('admin.users.info',['pageData'=>$userInfo])->render();

        $apiData = ['modalBody'=>$modalBody];
        $response = ['success'=>true,'message'=>'','data'=>$apiData];
        
        return response()->json($response);

    }

    public function show($userid=0){                 
        
        $user = DB::table("users")->where('id',$userid)->first();        
        if(empty($user)){
            return redirect()->back()->with('error', 'Something went wrong!');
        }

        $pageData = $user;
        return view('admin.users.show',['pageData'=>$pageData]);
    }

    public function edit($userid=0){         

        $pageData = [];
        $userData = User::find($userid);
        $pageData = $userData;

        return view('admin.users.add',['pageData'=>$pageData]);
    }

    public function add(){         

        $pageData = [];
        return view('admin.users.add',['pageData'=>$pageData]);
    }

    /* public function create(Request $request){         

        
    } */

    public function update(Request $request){         
        
        $pageData = [];
        return view('admin.users.list',['pageData'=>$pageData]);
    }

    // This is pagination function
    public function getUsersData(Request $request){
        //$students = Student::all();
    
        $columns = ['id', 'name', 'email', 'created_at'];

        $offset=$request->start;
        $limit=$request->length;

        /* $totalRecords = DB::table("users")->count();
        $data = DB::table("users")->offset($offset)->limit($limit)->get();         */

        $orderBy = 'id';
        $search_val = $request->search['value'];
        $orderColumn = $request->order[0]['column'];
        
        switch($orderColumn){
            case 0:
                $orderBy = 'id';
                break;
            case 1:
                $orderBy = 'firstname';
                break;    
            case 2:
                $orderBy = 'firstname';
                break; 
            case 4:
                    $orderBy = 'created_at';
                    break;            
            default:    
                $orderBy = 'id';            
        }

        $order = $request->order[0]['dir'];

        $query = DB::table('users')->select('*')->where('user_type','user');
        if(trim($search_val) != ''){
            $query->where("firstname","like","%$search_val%");
            $query->orWhere("lastname","like","%$search_val%");
            $query->orWhere("email","like","%$search_val%");
        }

        $totalRecords = $query->count();
        $data = $query->offset($offset)->orderBy($orderBy,$order)->limit($limit)->get();

        foreach($data as $item){
            $uid = $item->id;
            $item->fullname = $item->firstname.' '.$item->lastname;
            $item->date = date("Y-m-d H:i:s",strtotime($item->created_at));
            //$imgurl = url('user_photos/'.$item->profile_photo);
            $img_path = storage_path("app/public/user_photos/".$item->profile_photo);
            if(trim($item->profile_photo) != '' && file_exists($img_path)){
                $imgurl = asset('storage/user_photos/'.$item->profile_photo);
                $item->profile_photo = "<img src='".$imgurl."' width='70' />";    
            }else{
                
                $item->profile_photo = "";
            }
                        
            $editurl = url("admin/user/edit/$uid");
            $delurl = url("admin/user/edit/$uid");

            //$item->actions = "<a href='".url('admin/user/view/'.$uid)."' class='btn btn-block bg-gradient-primary btn-xs' >View</a>  ";
            $item->actions = "<a href='javascript:void(0);' data-toggle='modal' data-target='#modal-lg' class='btn btn-block bg-gradient-primary btn-xs view-info' data-rid='".$item->id."' >View</a> ";
            $item->actions.= "<a href='".$editurl."' class='btn btn-block bg-gradient-secondary btn-xs' href='#' >Edit</a>  ";
            $item->actions.= "<a href='".$delurl."' class='btn btn-block bg-gradient-danger btn-xs' href='#' >Delete</a>  ";
            $item->actions.= "<a href='javascript:void(0);' data-toggle='modal' data-target='#modal-lg' class='btn btn-block bg-gradient-primary btn-xs view-files' data-rid='".$item->id."' >Files</a> ";
            
        }

        return response()->json([
            'draw' => $request->input('draw'),
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords,
            'data' => $data,
        ]);
    }

    public function delete($userid=0){
        //DB::table("users")->where('id',$userid)->delete();

    }
}
