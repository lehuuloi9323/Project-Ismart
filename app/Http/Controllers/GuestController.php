<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product_categories;
use Illuminate\Support\Facades\Auth;
use App\Models\Product;
use App\Models\Post_categories;
use App\Models\Product_image;
use App\Models\Image;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Order;
use App\Models\Customer;
use App\Models\Order_item;

class GuestController extends Controller
{
    //
    public function index(){
        $categories_post = Post_categories::all();
        $categories = Product_categories::whereNull('parent_id')->with('children.children')->get();
        $product_is_features = Product::where('is_feature', 1)->orderBy('id', 'DESC')->take(10)->get();
        $category_phone = Product_categories::select('id')->where('name', 'LIKE', '%Điện thoại%')->get();
        // return $category_phone;
        $category_all_phone = array();
        //Duyệt tất cả danh mục con của Điện thoại
        foreach ($category_phone as $phones){
            $categories_all_phone[] = $phones->id;
            foreach ($phones->children as $phone){
            $categories_all_phone[] = $phone->id;
                foreach($phone->children as $child){
                $categories_all_phone[] = $child->id;
                }
            }
        }

        $phones = Product::whereIn('category_id', $categories_all_phone)->orderBy('id', 'DESC')->take(10)->get();

        $category_all_laptop = array();
        $category_laptop = Product_categories::select('id')->where('name', 'LIKE', '%Laptop%')->get();
        foreach ($category_laptop as $laptops){
            $categories_all_laptop[] = $laptops->id;
            foreach ($laptops->children as $laptop){
            $categories_all_laptop[] = $laptop->id;
                foreach($laptop->children as $child){
                $categories_all_laptop[] = $child->id;
                }
            }
        }
        $laptops = Product::whereIn('category_id', $categories_all_laptop)->orderBy('id', 'DESC')->take(10)->get();


        return view('guest.index', compact('categories', 'product_is_features', 'phones','laptops', 'categories_post'));
    }

    public function product_main(Request $request, $id = 0){
        // return $id;
        $categories_post = Post_categories::all();

        $categories = Product_categories::whereNull('parent_id')->with('children.children')->get();
        if($id == 0){
            $ctg = Product_categories::where('name', 'LIKE', '%Điện thoại%')->first();
            $category = Product_categories::select('id')->where('name', 'LIKE', '%Điện thoại%')->get();
            $category_select = array();
            //Duyệt tất cả danh mục con của Điện thoại
            foreach ($category as $selects){
                $category_select[] = $selects->id;
                foreach ($selects->children as $select){
                $category_select[] = $select->id;
                    foreach($select->children as $child){
                    $category_select[] = $child->id;
                    }
                }
            }
            $products=Product::whereIn('category_id', $category_select)->orderBy('id', 'DESC')->paginate(20);
        }
        elseif($id != 0)
        {
            $ctg = Product_categories::where('id', $id)->first();
            $category = Product_categories::select('id')->where('id',$id)->get();
            $category_select = array();

            //Duyệt tất cả danh mục con của Điện thoại
            foreach ($category as $selects)
            {

                $category_select[] = $selects->id;
                if(count($selects->children) > 0)
                {
                    foreach ($selects->children as $select)
                    {
                        $category_select[] = $select->id;
                            if(count($select->children) > 0)
                            {
                                foreach($select->children as $child)
                                {
                                    $category_select[] = $child->id;
                                }
                            }
                    }
                }
            }
            $products=Product::whereIn('category_id', $category_select)->orderBy('id', 'DESC')->paginate(3);
        }


        return view('guest.product.main',compact('categories', 'id', 'category','ctg', 'products', 'categories_post'));
    }
    public function product_detail(Request $request, $id){
        $categories_post = Post_categories::all();
        $categories = Product_categories::whereNull('parent_id')->with('children.children')->get();
        $product = Product::where('id', $id)->first();
        $product_same_category = Product::where('category_id', $product->category_id)->orderBy('id', 'DESC')->take(10)->get();
        $images = Product_image::where('product_id', $id)->join('images', 'product_images.image_id', '=', 'images.id')->select('images.url')->get();
        return view('guest.product.detail', compact('id', 'product', 'categories_post', 'categories', 'images','product_same_category'));
    }

    public function add_cart(Request $request, $id){

        if($request->input('num_order')){
            $qty = $request->input('num_order');
        }else{
            $qty = 1;
        }

        $product = Product::find($id);

        Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $qty,
            'price' => $product->price,
            'options' => ['thumbnail' => getImageUrlForProduct($product->id),
            'max_order' => $product->stock_quantity,
            ]
        ]);
        // return Cart::content();
        return redirect()->route('cart', compact('product'));
    }

    public function cart(Request $request){
        $categories_post = Post_categories::all();
        return view('guest.order.cart', compact('categories_post'));
    }
    public function remove_cart($rowId){
        Cart::remove($rowId);
        return redirect()->route('cart');
    }
    public function destroy_cart(){
        Cart::destroy();
        return redirect()->route('cart');
    }

    public function checkout($id = 0){
        $categories_post = Post_categories::all();

        if($id == 0)
        {
        return view('guest.order.checkout', compact('categories_post'));
        }
        elseif($id != 1){
            $product = Product::find($id);

            Cart::add([
                'id' => $product->id,
                'name' => $product->name,
                'qty' => 1,
                'price' => $product->price,
                'options' => ['thumbnail' => getImageUrlForProduct($product->id),
                'max_order' => $product->stock_quantity,
                ]
            ]);
        return view('guest.order.checkout', compact('categories_post'));
        }


    }

    public function payment(Request $request){
        $request->validate([
            'fullname' => 'required|string|max:255',
            'email' => 'required|string|max:255',
            'address'=> 'required|string|max:255',
            'phone' => 'required|digits:10|regex:/^0/',
            'payment_method' => 'required',

        ],
        [
            'required' => ':attribute không được để trống!!',
            'max' => ':attribute có độ dài tối thiểu :max ký tự',
            'string' => 'Định dạng sai',
            'regex' => ':attribute không phải định dạng số điện thoại',
            'digits'=> 'Số điện thoại có 10 chữ số'
        ],
        [
            'fullname' => 'Họ và tên',
            'address' => 'Địa chỉ',
            'phone' => 'Số điện thoại',
            'note' => 'Ghi chú',
            'payment_method' => 'Phương thức thanh toán'
        ]

    );
    if(Cart::count() > 0){
    $note = $request->note == '' ? null: $request->note;
        $customer = Customer::create([
            'name' => $request->fullname,
            'email' => $request->email,
            'phone_number' => $request->phone,
            'address' => $request->address,
        ]);

        $order = Order::create([
            'product_quantity' => Cart::count(),
            'total_amount' => str_replace('.', '', Cart::total()),
            'payment_method' => $request->payment_method,
            'shipping_address' => $request->address,
            'status' => 'pending',
            'customer_id' => $customer->id,
            'note' => $note
        ]);

        foreach(Cart::content() as $row){
        $order_items = Order_item::create([
            'order_id' => $order->id,
            'product_id' => $row->id,
            'quantity' => $row->qty,
            'price' => $row->price,
        ]);
        };

        Cart::destroy();
        if($order->payment_method == 'momo')
        {
            return redirect()->route('cart.checkout')->with('status', 'Số điện thoại MoMo: 0357559323 -- Tên: LÊ HỬU LỢI -- Nội dung: Thanh toán đơn hàng có ID:'. $order->id.' -- Số tiền cần thanh toán: '. number_format($order->total_amount, 0, '', '.').'đ');
        }
        elseif($order->payment_method == 'bank')
        {
            return redirect()->route('cart.checkout')->with('status', 'Số tài khoản: 04301010746918 -- Tên: LÊ HỬU LỢI --
            Ngân hàng: Maritime Bank (MSB) -- Nội dung: Thanh toán đơn hàng có ID:'. $order->id.' -- Số tiền cần thanh toán: '. number_format($order->total_amount, 0, '', '.').'đ');
        }

    }else{
        return redirect()->route('cart.checkout')->with('warning', 'Vui lòng chọn sản phẩm để thanh toán');
    }
    }

}
