<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'user']);
            return $next($request);
        });
    }
    public function checksql(Request $request){
        $keyword ="";
        $users = User::onlyTrashed()
        ->where('name','LIKE',"%{$keyword}%")->orWhere('email','LIKE',"%{$keyword}%")
        ->orWhere('email','LIKE',"%{$keyword}%");



        return dd($users->toSql());

    }

    public function list(Request $request){
    $keyword ="";
    $counttrash = User::onlyTrashed()->count();
    $userslock = [];
    $status = $request->input('status');
    if($status == 'all'){
        if($request->input('keyword')){
            $keyword=$request->input('keyword');
        }
        $userslock = User::onlyTrashed()
    ->where('name','LIKE',"%{$keyword}%")
    ->paginate(7);

    $users = User::where('name','LIKE',"%{$keyword}%")
    ->orwhere('email','LIKE',"%{$keyword}%")
    ->paginate(7);
    }

    elseif($status == 'trash'){
    // $users = User::onlyTrashed()
    // ->paginate(3);
    $users = User::onlyTrashed()
    ->where('name','LIKE',"%{$keyword}%")
    ->paginate(7);

    }else{

        if($request->input('keyword')){
            $keyword=$request->input('keyword');
        }
    $users = User::where('name','LIKE',"%{$keyword}%")
    ->orwhere('email','LIKE',"%{$keyword}%")
    ->paginate(7);

    }
    $count = User::where('name','LIKE',"%{$keyword}%")
    ->orwhere('email','LIKE',"%{$keyword}%")
    ->count();
    // $countAll = User::all()->where('name','LIKE',"%{$keyword}%")
    // ->orwhere('email','LIKE',"%{$keyword}%")
    // ->count();
    $countAll = $count + $counttrash;
        return view('user.list', compact('users', 'count', 'keyword','counttrash', 'status','countAll','userslock'));
        }



    public function add(Request $request){
        $roles = Role::all();
        return view('user.add',compact('roles'));
    }
    public function handle_add(Request $request){
        $request->validate(
            [
                'name' => 'required|string|max:255',
                'email' => 'required|string|max:255|email|unique:users',
                'password' => 'required|string|min:8|confirmed',

            ],
            [
                'required' => ':attribute không được để trống !!',
                'min' => ':attribute có độ dài ít nhất :min ký tự',
                'max' => ':attribute có đồ dài tối đa :max ký tự',
                'confirmed  ' => 'Mật khẩu và nhập lại mật khẩu không trùng khớp',
                'unique' => 'Email đã được tồn tại trên hệ thống',
                'email' => 'Vui lòng nhập đúng định dạng của email'
            ],
            [
                'name' => 'Tên người dùng',
                'password' => 'Mật khẩu'
            ]
            );
        $user = User::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => $request->input('password'),
        ]);
        $user->roles()->attach($request->input('role_id'));
        return redirect()->route('user.add')->with('status','Đã thêm người dùng thành công');
    }

    public function edit(Request $request, $id){
        $user = User::find($id);
        $roles = Role::all();
        return view('user.edit', compact('user','roles'));
    }
    public function update(Request $request, $id){
        $user = User::find($id);
        $request->validate(
           [
               'name' => 'required|string|max:255',
               'password' => 'confirmed',
           ],
           [
               'required' => ':attribute không được để trống !!',
               'min' => ':attribute có độ dài ít nhất :min ký tự',
               'max' => ':attribute có đồ dài tối đa :max ký tự',
               'confirmed  ' => 'Xác nhận mật khẩu không thành công',
           ],
           [
               'name' => 'Tên người dùng',
               'password' => 'Mật khẩu'
           ]
           );

        if($request->input('password')){
            $user->update([
                'name'=>$request->input('name'),
                'password'=>Hash::make($request->input('password'))
             ]);
        }else{
            $user->update([
                'name'=>$request->input('name'),
             ]);
        }

            $user->roles()->sync($request->input('roles'));
           return redirect()->route('user.list')->with('status','Đã cập nhật thành công');
        // return $request->all();
        // return 'Đã cập nhật thành công';
       // return $id;
       }

    public function delete($id){

        if(Auth::id()!= $id){
            $user = User::find($id);
            $user->delete();
            return redirect('admin/user/list')->with('status', 'Bạn đã xóa người dùng thành công!');
            }else
            {
            return redirect('admin/user/list')->with('warning', 'Bạn không thể xóa user của bạn đang đăng nhập!');
            }
    }

    public function action(Request $request){



        $list_check = $request->input('list_check');
        if($list_check){
            foreach($list_check as $k => $id){
                if(Auth::id() == $id){
                    unset($list_check[$k]);
            }
        }
        if(!empty($list_check)){
            $act = $request->input('actions');
            if($act=='block'){
                User::destroy($list_check);
                return redirect('user/list')->with('status', 'Khóa user thành công');
            }
            if($act=='restore'){
                User::withTrashed($list_check)
                ->whereIn('id', $list_check)
                ->restore();
                return redirect('user/list')->with('status', 'Khổi phục tài khoản thành công');
            }
            if($act = 'delete'){
                User::withTrashed()
                ->whereIn('id',$list_check)
                ->forceDelete();
                return redirect('user/list')->with('status', 'Bạn đã xóa vĩnh viễn');
            }

        }
        return redirect('user/list')->with('status', 'Bạn không thể thao tác trên user của bạn');

    }


}


}
