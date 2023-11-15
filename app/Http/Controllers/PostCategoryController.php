<?php

namespace App\Http\Controllers;
use App\Models\Post_categories;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class PostCategoryController extends Controller
{
    public function cat(Request $request){
        $categories = Post_categories::whereNull('parent_id')->with('children.children')->get();
        return view('post.cat', compact('categories'));
    }
    public function add(Request $request){
        $request->validate([
            'name' => 'required|string|max:255|unique:post_categories,name',
            'description' => 'required|string|max:255',
            // 'slug' => 'unique:product_categories,slug',
        ],
        [
            'required' => ':attribute không được để trống !!',
            'max' => ':attribute có đồ dài tối đa :max ký tự',
            'string' => 'Định dạng sai',
            'unique' => ':attribute đã tồn tại trên hệ thống !',
        ],
        [
        'name' => 'Tên danh mục',
        'description' => 'Mô tả',
        ]);
        $parent_id = $request->parent_id == ''? null : $request->parent_id;
        // return $parent_id;
        $post_category = Post_categories::create([
            'name' => ucfirst($request->name),
            'slug' => NameToSlug($request->name),
            'description' => ucfirst($request->description),
            'user_id' => Auth::user()->id,
            'parent_id' => $parent_id,
        ]);
        // return Post_categories::all();
        return redirect()->route('post.cat')->with('status', 'Bạn đã thêm danh mục mới thành công ^^ ');
    }

    public function delete($id){
        $category = Post_categories::find($id);
        $category->delete();
        return redirect()->route('post.cat')->with('status', 'Bạn đã xóa thành công danh mục '.$category->name);
    }
    public function edit(Request $request, $id){
        $post_category = Post_categories::find($id);
        $categories = Post_categories::whereNull('parent_id')->with('children.children')->get();
        return view('post.cat.edit', compact('categories','post_category'));
    }
    public function update(Request $request, $id){
        $post_category = Post_categories::find($id);
        $request->validate([
            'name' => 'required|string|max:255|unique:post_categories,name,'.$post_category->id,
            'description' => 'required|string|max:255',
            // 'slug' => 'unique:product_categories,slug',
        ],
        [
            'required' => ':attribute không được để trống !!',
            'max' => ':attribute có đồ dài tối đa :max ký tự',
            'string' => 'Định dạng sai',
            'unique' => ':attribute đã tồn tại trên hệ thống !',
        ],
        [
        'name' => 'Tên danh mục',
        'description' => 'Mô tả',
        ]);

        $parent_id = $request->parent_id == ''? null : $request->parent_id;
        // return $parent_id;
        $post_category->update([
            'name' => ucfirst($request->name),
            'slug' => NameToSlug($request->name),
            'description' => ucfirst($request->description),
            'user_id' => Auth::user()->id,
            'parent_id' => $parent_id,
        ]);

        return redirect()->route('post.cat')->with('status', 'Bạn đã sửa danh mục '.$post_category->name);

    }
}
