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
}
