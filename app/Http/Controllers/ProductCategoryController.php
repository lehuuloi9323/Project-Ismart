<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product_categories;
use Illuminate\Support\Facades\Auth;
class ProductCategoryController extends Controller

{
    public function index(){

        $product_categories = Product_categories::all();
        // return $product_categories;
        // $pro_name = Product_categories::find(1)->users;
        // return $pro_name;
        return view('product.cat', compact('product_categories'));
    }

    public function add(Request $request){
        $request->validate([
            'name' => 'required|string|max:255|unique:product_categories,slug',
            'slug' => 'required|string|max:255|unique:product_categories,slug',
            'description' => 'required|string|max:255',
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

    $parent_id = $request->parent_id == ''? 0 : $request->parent_id;

    $product_category = Product_categories::create([
        'name' => ucfirst($request->name),
        'slug' => strtolower($request->slug),
        'description' => ucfirst($request->description),
        'user_id' => Auth::user()->id,
        'parent_id' => $parent_id,
    ]);

    return redirect()->route('product.cat')->with('status', 'Danh mục mới đã được thêm thành công ^^');
    }

    public function edit($id){
        // return $id;
        $product_categories = Product_categories::all();

        $product_category = Product_categories::find($id);
        return view('product.cat.edit', compact('product_categories', 'product_category'));
    }

    public function update(Request $request, $id){
        $product_category = Product_categories::find($id);
        $request->validate([
            'name' => 'required|string|max:255|unique:product_categories,name,'.$product_category->id,
            'slug' => 'required|string|max:255|unique:product_categories,slug,'.$product_category->id,
            'description' => 'required|string|max:255',
        ],
        [
            'required' => ':attribute không được để trống !!',
            'max' => ':attribute có đồ dài tối đa :max ký tự',
            'string' => 'Định dạng sai',
            'unique' => ':attribute đã tồn tại trên hệ thống !'
        ],
        [
        'name' => 'Tên danh mục',
        'description' => 'Mô tả',
        ]);

        $parent_id = $request->parent_id == ''? 0 : $request->parent_id;
        $product_category->update([
        'name' => ucfirst($request->name),
        'slug' => strtolower($request->slug),
        'description' => ucfirst($request->description),
        'user_id' => Auth::user()->id,
        'parent_id' => $parent_id,
        ]);

        return redirect()->route('product.cat')->with('status', 'Cập nhật thành công !');
    }

    public function delete($id){
        $product_category = Product_categories::find($id);
        $product_category->delete();
        return redirect()->route('product.cat')->with('status', 'Bạn đã xóa thành công !');
    }
}
