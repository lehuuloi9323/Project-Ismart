<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Gate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Product_categories;
use App\Models\Product;
use App\Models\Product_image;
use App\Models\Image;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class ProductController extends Controller

{
    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'product']);
            return $next($request);
        });
    }
    public function add(){
        $categories = Product_categories::all();
        return view('product.add', compact('categories'));
    }

    public function storeadd(Request $request){
        $request->validate([
            'name' => 'required|string|max:255|unique:products,name',
            'price' => 'required|min:5|',
            'product_detail' => 'required|string',
            'product_description' => 'required|string',
            'quantity' => 'required',
            'category' => 'required',
            'product_img' =>'required',
            'list_product_img' => 'required',
        ],
        [
            'required' => ':attribute không được để trống!!',
            'min' => ':attribute có độ dài tối thiểu :min ký tự',
            'string' => 'Định dạng sai',
            'unique' => ':attribute đã tồn tại trên hệ thống!',
        ],
        [
            'name' => 'Tên sản phẩm',
            'price' => 'Giá',
            'product_detail' => 'Chi tiết sản phẩm',
            'product_description' => 'Mô tả sản phẩm',
            'category' => 'Danh mục',
            'product_img' => 'Ảnh đại diện sản phẩm',
            'list_product_img' => 'Thư viện ảnh sản phẩm'
        ]);
        $is_featured = $request->iS_featured == ''? 0 : $request->iS_featured;
        $list_img = $request->list_product_img;
        foreach($list_img as $img){
            $file = $img->getClientOriginalName();
            $img->move(public_path('storage/photos/1/Product'), $file);
        }
        $product = Product::create([
            'name' => $request->name,
            'description' => $request->price,
            'slug' => NameToSlug($request->name),
            'details' => $request->product_detail,
            'price' => $request->price,
            'stock_quantity' => $request->quantity,
            'is_feature' => $is_featured,
            'user_id' => Auth::user()->id,
            'category_id' => $request->category,
        ]);
        // if (File::exists(public_path('storage/photos/1/Product/').$url)) {
        //     return "file có tồn tại";
        // } else {
        //     return "file kh tồn tại";
        // }
        $url = Str::after($request->product_img, 'Product/'); //Lấy dữ liệu sau chuỗi Product/
        $file_size=File::size(public_path('storage/photos/1/Product/').$url); // Lấy kích thước ảnh đơn vị bytes
        $image = Image::create([
            'url' => $url,
            'name' => $request->name,
            'size_img' => $file_size,
            'user_id' => Auth::user()->id
        ]);
        $product_img = Product_image::create([
            'product_id' => $product['id'],
            'image_id' => $image['id'],
            'pin' => '1'
        ]);
        // return $request->list_product_img;
        foreach($request->list_product_img as $list_img){
            // $urls = $list_img->getClientOriginalName();
            // return $urls;
            // $file_sizes =
            $func_img = Image::create([
                'url' => $list_img->getClientOriginalName(),
                'name' => $request->name,
                'size_img' => File::size(public_path('storage/photos/1/Product/').$list_img->getClientOriginalName()),
                'user_id' => Auth::user()->id
            ]);

            $product_img = Product_image::create([
                'product_id' => $product['id'],
                'image_id' => $func_img['id']
            ]);
        }



        // C:\xampp\htdocs\adminIsmart\public\storage/photos/1/Product



        return redirect()->route('product.add')->with('status', 'Thêm sản phẩm thành công !');






    }







    public function list(Request $request){
        $products = Product::all();
        return view('product.list', compact('products'));
    }}
