<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Post_categories;
use Illuminate\Support\Facades\Auth;
use App\Models\Image;
use App\Models\Post;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;


class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'post']);
            return $next($request);
        });
    }
    public function add(Request $request){
        $categories = Post_categories::whereNull('parent_id')->with('children.children')->get();
        return view('post.add', compact('categories'));
    }
    public function storeadd(Request $request){

        $request->validate([
            'title' => 'required|string|max:255|unique:posts,title',
            'excerpt' => 'required|string|max:255',
            'content' => 'required|string',
            'post_img' => 'required',
            'category' => 'required'
        ],
        [
            'required' => ':attribute không được để trống !!',
            'max' => ':attribute có đồ dài tối đa :max ký tự',
            'string' => 'Định dạng sai',
            'unique' => ':attribute đã tồn tại trên hệ thống !',
        ],
        [
        'title' => 'Tiêu đề',
        'excerpt' => 'Tóm tắt bài viết',
        'content' => 'Nội dung',
        'category' => 'Danh mục',
        'post_img' => 'Ảnh đại diện bài viết'
        ]);
        $url = Str::after($request->post_img, 'Post/');
        $file_size=File::size(public_path('storage/photos/1/Post/').$url);
        $image = Image::create([
            'url' => $url,
            'name' => $request->title,
            'size_img' => $file_size,
            'user_id' => Auth::user()->id,
        ]);
        $post = Post::create([
            'title' => $request->title,
            'slug' => NameToSlug($request->title),
            'excerpt' => $request->excerpt,
            'content' => $request->content,
            'status' => $request->status,
            'user_id' => Auth::user()->id,
            'category_id' => $request->category,
            'image_id' => $image['id']
        ]);
        return redirect()->route('post.add')->with('status', 'Thêm vài viết thành công ^^');
    }





    public function list(Request $request){
        $keyword = '';
        $status = $request->input('status');
        $count_published = Post::where('status', 'published')->count();
        $count_archived = Post::where('status', 'archived')->count();
        $count_draft = Post::where('status', 'draft')->count();
        $count_pending = Post::where('status', 'pending')->count();
        if($request->input('keyword')){
            $keyword = $request->input('keyword');
        }
        if($status == 'published' or $status == ''){
            $posts = Post::where('title', 'LIKE', "%{$keyword}%")->where('status', 'published')->paginate(3);
        }
        elseif($status == 'archived'){
            $posts = Post::where('title', 'LIKE', "%{$keyword}%")->where('status', 'archived')->paginate(3);
        }
        elseif($status == 'draft'){
            $posts = Post::where('title', 'LIKE', "%{$keyword}%")->where('status', 'draft')->paginate(3);
        }
        elseif($status == 'pending'){
            $posts = Post::where('title', 'LIKE', "%{$keyword}%")->where('status', 'pending')->paginate(3);
        }


        return view('post.list' , compact('posts', 'status', 'count_published', 'count_archived', 'count_draft', 'count_pending', 'keyword'));
    }

    public function action(Request $request){
        $list_check = $request->input('list_check');
        $act = $request->input('action');
        if($list_check){
            $act = $request->input('action');
            if($act == 'archived'){
                foreach($list_check as $k => $id){
                    $post = Post::find($id);
                    $post->status = 'archived';
                    $post->save();

                }
                return redirect()->route('post.list')->with('status', 'Bài viết được chọn đã chuyển sang trạng thái lưu trữ');
            }
            elseif($act == 'pending'){
                foreach($list_check as $k => $id){
                    $post = Post::find($id);
                    $post->status = 'pending';
                    $post->save();
                }
                return redirect()->route('post.list')->with('status', 'Bài viết được chọn đã chuyển sang trạng thái chưa viết xong');
            }
            elseif($act == 'draft'){
                foreach($list_check as $k => $id){
                    $post = Post::find($id);
                    $post->status = 'draft';
                    $post->save();
                }
                return redirect()->route('post.list')->with('status', 'Bài viết được chọn đã chuyển sang trạng thái bản nháp');
            }
            elseif($act == 'published'){
                foreach($list_check as $k => $id){
                    $post = Post::find($id);
                    $post->status = 'published';
                    $post->save();
                }
                return redirect()->route('post.list')->with('status', 'Bài viết được chọn đã chuyển sang trạng thái công khai');
            }
        }
        return redirect()->route('post.list');
    }
    public function delete($id){
        $post = Post::find($id);
        $delete_image = Image::find($post->image_id)->delete();
        $post->delete();
        return redirect()->route('post.list')->with('status', 'Bài viết đã xóa thành công !');
    }
    public function edit($id){
        $categories = Post_categories::whereNull('parent_id')->with('children.children')->get();
        $post = Post::find($id);
        return view('post.edit', compact('categories', 'post'));
    }
    public function update($id, Request $request){
        $post = Post::find($id);
        $request->validate([
            'title' => 'required|string|max:255|unique:posts,title,'.$id,
            'excerpt' => 'required|string',
            'content' => 'required|string',
            'post_img' => 'required',
            'category' => 'required'
        ],
        [
            'required' => ':attribute không được để trống !!',
            'max' => ':attribute có đồ dài tối đa :max ký tự',
            'string' => 'Định dạng sai',
            'unique' => ':attribute đã tồn tại trên hệ thống !',
        ],
        [
        'title' => 'Tiêu đề',
        'excerpt' => 'Tóm tắt bài viết',
        'content' => 'Nội dung',
        'category' => 'Danh mục',
        'post_img' => 'Ảnh đại diện bài viết'
        ]);

        $url = Str::after($request->post_img, 'Post/'); //Lấy dữ liệu sau chuỗi Product/
        $file_size = File::size(public_path('storage/photos/1/Post/').$url);
        $image = Image::find($post->image_id);
        $image->update([
            'url' => $url,
            'name' => $request->title,
            'size_img' => $file_size,
            'user_id' => Auth::user()->id,
        ]);

        $post->update([
            'title' => $request->title,
            'slug' => NameToSlug($request->title),
            'except' => $request->except,
            'content' => $request->content,
            'status' => $request->status,
            'user_id' => Auth::user()->id,
            'category_id' => $request->category
        ]);
        return redirect()->route('post.list')->with('status', 'Bài viết: '.$post->title.' cập nhật thành công !');


    }
}
