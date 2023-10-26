<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Permission;

class PermissionController extends Controller
{
    //
    //view thêm
    public function add(Request $request){
        $permissions = Permission::all()->groupBy(function ($permission){
            return explode('.', $permission->slug)[0];
        });
        return view('permission.add',compact('permissions'));
    }

    //Xử lý thêm dữ liệu
    public function storeadd(Request $request){
        // return $request->all(); //Kiểm tra các biến nhập trong posst
        $request->validate([
            'add_name_permission' => 'required | max:255',
            'add_slug' => 'required | max:255'
        ],
        [
        'required' => ':attribute không được để trống'
        ],
        [
            'add_name_permission' => 'Tên quyền',
            'add_slug' => 'Slug'
        ]);

        Permission::create([
            'name' => $request->input('add_name_permission'),
            'slug' => $request->input('add_slug'),
            'description'=>$request->input('description'),
        ]);

        return redirect()->route('permission.add')->with('status', 'Thêm dữ liệu thành công');
        // return $request->all();
        }

        public function delete($id){
            Permission::where('id', $id)->delete();
            return redirect()->route('permission.add')->with('status', 'Bạn đã xóa thành công quyền đã chọn !');
        }

        public function edit($id){
            $permissions = Permission::all()->groupBy(function ($permission){
                return explode('.', $permission->slug)[0];
            });
            $permission = Permission::find($id);
            return view('permission.edit', compact('id','permissions','permission'));
        }

        public function update(Request $request, $id){
            $request->validate([
                'add_name_permission' => 'required | max:255',
                'add_slug' => 'required | max:255'
            ],
            [
            'required' => ':attribute không được để trống'
            ],
            [
                'add_name_permission' => 'Tên quyền',
                'add_slug' => 'Slug'
            ]);

            Permission::where('id', '=',$id)->update([
                'name' => $request->input('add_name_permission'),
                'slug' => $request->input('add_slug'),
                'description' => $request->input('description'),
            ]);
            return redirect()->route('permission.add')->with('status', 'Cập nhật thành công');
        }

}
