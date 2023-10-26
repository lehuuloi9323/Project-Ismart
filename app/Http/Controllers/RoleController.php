<?php

namespace App\Http\Controllers;
use App\Models\Role;
use Illuminate\Http\Request;
use App\Models\Permission;
use Illuminate\Support\Facades\Auth;
use App\Models\Users;
class RoleController extends Controller
{
    //
    public function list(Request $request){
        // return Auth::user()->hasPermission('page.delete');
        // if(Auth::user()->hasPermission('product.add')){
        //     dd('Bạn được phép truy cập quyền thêm sản phẩm');
        // }
        // else{
        //     dd('Bạn không có đủ quyền truy cập');
        // }
        $roles = Role::all();
        return view('role.list', compact('roles'));
// return $role;
    }

    public function add(Request $request){
        $permissions = Permission::all()->groupBy(function ($permission){
            return explode('.', $permission->slug)[0];
        });
        return view('role.add',compact('permissions'));
    }

    public function store(Request $request){
        $validated = $request->validate([
            'name' => 'required|max: 255|unique:roles',
            'description' => 'required'
        ],
        [
            'required' => ':attribute không được để trống',
            'unique' => 'Quyền đã được tồn tại trên hệ thống'
        ],
        [
            'name' => 'Tên vai trò',
            'description' => 'Mô tả'
        ]);

        // return $request->input('permission_id');
        $role = Role::create([
            'name' => $request->input('name'),
            'description' => $request->input('description')
        ]);

        $role->permissions()->attach($request->input('permission_id'));
        return redirect()->route('role.list')->with('status', 'Thêm vai trò thành công !!');
    }

    public function edit(Role $role) {
        // return $role;
        $permissions = Permission::all()->groupBy(function ($permission){
            return explode('.', $permission->slug)[0];
        });
        return view('role.edit',compact('permissions', 'role'));
    }
    public function update(Role $role, Request $request) {
        // return $permission_id;
        $request->validate([
            'name' => 'required|unique:roles,name,'.$role->id,
            'description' => 'required',
            'permission_id' => 'nullable|array',
            'permission_id*' => 'exists:permission,id'
        ]);

        $role->update([
        'name' => $request->input('name'),
        'description' => $request->input('description'),
    ]);
    $role->permissions()->sync($request->input('permission_id'));

    return redirect()->route('role.list')->with('status', 'Cập nhật quyền thành công');
    }
    public function delete(Role $role) {
        $role->delete();
        return redirect()->route('role.list')->with('status', 'Bạn đã xóa quyền thành công');
    }

}
