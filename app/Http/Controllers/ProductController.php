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
// use Illuminate\Database\Eloquent\Collection;
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
            'product_status' => $request->status,
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
        $keyword = "";
        $status = $request->input('status');
        $count_active = Product::where('name', 'LIKE', "%{$keyword}%")
        ->where('product_status', 'active')->count();
        $count_inactive = Product::where('name', 'LIKE', "%{$keyword}%")
        ->where('product_status', 'inactive')->count();
        $count_out_of_stock = Product::where('name', 'LIKE', "%{$keyword}%")
            ->where('product_status', 'out_of_stock')->Orwhere('stock_quantity', '0')->count();
        if($request->input('keyword')){
            $keyword = $request->input('keyword');
        }
        if($status == 'active' or $status == ''){
            $products = Product::where('name', 'LIKE', "%{$keyword}%")
            ->where('product_status', 'active')
            ->paginate(3);
        }elseif($status == 'inactive'){
            $products = Product::where('name', 'LIKE', "%{$keyword}%")
            ->where('product_status', 'inactive')
            ->paginate(3);
        }else{
            $products = Product::where('name', 'LIKE', "%{$keyword}%")
            ->where('product_status', 'out_of_stock')->Orwhere('stock_quantity', '0')
            ->paginate(3);
        }


        return view('product.list', compact('products', 'keyword', 'status','count_active', 'count_inactive','count_out_of_stock'));
    }
    public function action(Request $request){
        $list_check = $request->input('list_check');
        // $act = $request->input('actions');
        // return $act;
        if($list_check){
            $act = $request->input('actions');
            if($act == 'active'){
                foreach($list_check as $k => $id){
                    $product = Product::find($id);
                    $product->product_status = 'active';
                    $product->save();

                }
                return redirect()->route('product.list')->with('status', 'Sản phẩm đã được bán trở lại');
            }
            elseif($act == 'inactive'){
                foreach($list_check as $k => $id){
                    $product = Product::find($id);
                    $product->product_status = 'inactive';
                    $product->save();
                }
                return redirect()->route('product.list')->with('status', 'Sản phẩm đã chuyển sang trạng thái tạm ngưng bán');
            }
        }
        return redirect()->route('product.list');
    }
    public function delete($id){

        $product_images = Product_image::where('product_id', $id)->pluck('image_id');
        $delete_images = Image::whereIn('id', $product_images)->delete();
        $product = Product::find($id)->delete();
        return redirect()->route('product.list')->with('status', 'Bạn đã xóa thành công sản phẩm !!');
    }
    public function edit($id){
        $categories = Product_categories::all();
        $product = Product::find($id);
        $images = Product_image::where('product_id', $id)->join('images', 'product_images.image_id', '=', 'images.id')->select('images.url')->get();

        return view('product.edit', compact('product', 'categories','images'));
    }
    public function update(Request $request, $id){
        $product = Product::find($id);
        $request->validate([
            'name' => 'required|string|max:255|unique:Products,id,'.$id,
            'price' => 'required|min:5|',
            'product_detail' => 'required|string',
            'product_description' => 'required|string',
            'quantity' => 'required',
            'category' => 'required',
            'product_img' =>'required',
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
        //Nếu người dùng không thay đổi thư viện sản phẩm
        if(empty($request->list_product_img)) {
            //cập nhật bảng Product
            $product->update([
                'name' => $request->name,
                'price' => $request->price,
                'description' => $request->price,
                'slug' => NameToSlug($request->name),
                'details' => $request->product_detail,
                'price' => $request->price,
                'stock_quantity' => $request->quantity,
                'is_feature' => $is_featured,
                'product_status' => $request->status,
                'user_id' => Auth::user()->id,
                'category_id' => $request->category,
            ]);


            //Cập nhật ảnh đại diện của sản phẩm
            $url = Str::after($request->product_img, 'Product/'); //Lấy dữ liệu sau chuỗi Product/
            $file_size = File::size(public_path('storage/photos/1/Product/').$url);
            $product_pin = Product_image::select('image_id')->where('product_id',$id)->where('pin','=','1')->get();
            $update_pin = Image::find($product_pin)->first();
            $update_pin->update([
                'url' => $url,
                'name' => $request->name,
                'size_img' => $file_size,
                'user_id' => Auth::user()->id,
            ]);

            // $images = Product_image::where('product_id', $id)->join('images', 'product_images.image_id', '=', 'images.id')->select('images.id','images.url' )->get();
            // return $images;

        }elseif(!empty($request->list_product_img)){ //Nếu người dùng thay đổi ảnh thư viện ảnh sản phẩm
            //cập nhật bảng Product
            $product->update([
                'name' => $request->name,
                'price' => $request->price,
                'description' => $request->price,
                'slug' => NameToSlug($request->name),
                'details' => $request->product_detail,
                'price' => $request->price,
                'stock_quantity' => $request->quantity,
                'is_feature' => $is_featured,
                'product_status' => $request->status,
                'user_id' => Auth::user()->id,
                'category_id' => $request->category,
            ]);

            //Cập nhật ảnh đại diện của sản phẩm
            $url = Str::after($request->product_img, 'Product/'); //Lấy dữ liệu sau chuỗi Product/
            $file_size = File::size(public_path('storage/photos/1/Product/').$url);
            $product_pin = Product_image::select('image_id')->where('product_id',$id)->where('pin','=','1')->get();
            $update_pin = Image::find($product_pin)->first();
            $update_pin->update([
                'url' => $url,
                'name' => $request->name,
                'size_img' => $file_size,
                'user_id' => Auth::user()->id,
            ]);

            //Xóa list ảnh của sản phẩm trừ ảnh có đại diện có pin =1
            $id_images = Product_image::where('product_id', $id)->where('pin', '!=', '1')->join('images', 'product_images.image_id', '=', 'images.id')->select('images.id')->get();
            $images_of_product = Image::whereIn('id', $id_images)->delete();

            $id_new_create_img = [];
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
                $id_new_create_img[] = $func_img->id;
                $create_product_images = Product_image::create([
                    'product_id' => $id,
                    'image_id' => $func_img->id,
                    'pin' => '0'
                ]);
                // $product_img = Product_image::create([
                //     'product_id' => $product['id'],
                //     'image_id' => $func_img['id']
                // ]);
            }
            // return $images_of_product;
            // $images_of_product->delete();
            // return $images_of_product;
        }
        return redirect()->route('product.list')->with('status', 'Sửa sản phẩm: '.$product->name.' thành công !!!');

    }
}
