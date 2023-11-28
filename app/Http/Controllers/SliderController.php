<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Image;
use App\Models\Slider;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Auth;

class SliderController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'slider']);
            return $next($request);
        });
    }

    public function add(){
        return view('slider.add');
    }
    public function storeadd(Request $request){
        $request->validate([
            'title' => 'required|string|max:200',
            'url' => 'required',
            'display_order' => 'required',
            'description' => 'required|string',
            'img'   => 'required',

        ],
        [
            'required' => ':attribute không được để trống!!',
            'max' => ':attribute có độ dài tối thiểu :max ký tự',
            'string' => 'Định dạng sai',
        ],
        [
            'title' => 'Tiêu đề',
            'url' => 'Đường dẫn tới sản phẩm',
            'display_order' => 'Vị trí xuất hiện',
            'description' => 'Mô tả',
            'img' => 'Ảnh slider'
        ]
    );

    $old_sliders = Slider::where('display_order', $request->display_order)->get();

    if ($old_sliders->count() > 0) {
            $old_slider->update([
                'display_order' => 0,
            ]);
    }
    $image = Str::after($request->img, '1/');
    $file_size=File::size(public_path('storage/photos/1/').$image); // Lấy kích thước ảnh đơn vị bytes

    $add_image = Image::create([
        'url' => $image,
        'name' => $request->input('title'),
        'size_img' => $file_size,
        'user_id' =>  Auth::user()->id
    ]);
    // return $add_image->id;

    $add_slider = Slider::create([
        'image_id' => $add_image->id,
        'title' => $request->title,
        'description' => $request->description,
        'url' => $request->url,
        'display_order' => $request->display_order,
        'user_id' => Auth::user()->id
    ]);
    return redirect()->route('slider.add')->with('status','Dữ liệu ảnh slider được thêm thành công');
    }

    public function list(Request $request){
        $status = $request->input('status');
        $count_show = Slider::where('display_order','>','0')->count();
        $count_hide = Slider::where('display_order','=','0')->count();
        if($status == 'show' or $status == ''){
            $sliders = Slider::where('display_order','>','0')->paginate(7);
        }
        if($status == 'hide'){
            $sliders = Slider::where('display_order','=','0')->paginate(7);
        }

        return view('slider.list', compact('sliders','count_show', 'count_hide'));
    }

    public function edit(Request $request, $id){
        $slider = Slider::find($id);
        return view('slider.edit', compact('slider'));
    }

    public function update(Request $request, $id){
        $request->validate([
            'title' => 'required|string|max:200',
            'url' => 'required',
            'display_order' => 'required',
            'description' => 'required|string',
            'img'   => 'required',

        ],
        [
            'required' => ':attribute không được để trống!!',
            'max' => ':attribute có độ dài tối thiểu :max ký tự',
            'string' => 'Định dạng sai',
        ],
        [
            'title' => 'Tiêu đề',
            'url' => 'Đường dẫn tới sản phẩm',
            'display_order' => 'Vị trí xuất hiện',
            'description' => 'Mô tả',
            'img' => 'Ảnh slider'
        ]
    );
    $slider = Slider::find($id);
    $old_sliders = Slider::where('display_order', $request->display_order)->get();
    if ($old_sliders->count() > 0) {

        foreach ($old_sliders as $old_slider) {
            $old_slider->update([
                'display_order' => 0,
            ]);
        }
    }
    $slider->update([
        'title' => $request->title,
        'description' => $request->description,
        'url' => $request->url,
        'display_order' => $request->display_order,
        'user_id' => Auth::user()->id
    ]);
    $images = Image::find($slider->image_id);
    $image = Str::after($request->img, '1/');
    $file_size=File::size(public_path('storage/photos/1/').$image); // Lấy kích thước ảnh đơn vị bytes

    $images->update([
        'url' => $image,
        'size_img' => $file_size
    ]);



    return redirect()->route('slider.list')->with('status', 'Cập nhật thành công !!');
    }
}
