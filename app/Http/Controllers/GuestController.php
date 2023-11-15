<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product_categories;
use Illuminate\Support\Facades\Auth;
use App\Models\Product;
use App\Models\Product_image;
use App\Models\Image;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
class GuestController extends Controller
{
    //
    public function index(){
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


        return view('guest.index', compact('categories', 'product_is_features', 'phones','laptops'));
    }

    public function product_main(Request $request){
        return view('guest.product.main');
    }
}
