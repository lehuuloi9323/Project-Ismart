@extends('layouts.admin')
@section('title','Thêm bài viết')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Sửa bài viết <i style="color: brown">{{ $post->title }}</i>
        </div>
        @if (!empty(session('status')))
            <div class="alert alert-success">{{ Session('status') }}</div>
        @endif
        <div class="card-body">
            <form method="POST" action="{{ route('post.update', $post->id) }}">
                @csrf
                <div class="form-group">
                    <label for="title">Tiêu đề bài viết (<i style="color: red">*</i>)</label>
                    <input class="form-control" type="text" name="title" id="title" value="{{ $post->title }}">
                    @error('title')
                                <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="excerpt">Viết đoạn tóm tắt gọn bài viết thật cuốn hút (<i style="color: red">*</i>)</label>
                    <textarea name="excerpt" class="form-control" id="excerpt" cols="30" rows="15">{{ $post->excerpt }}</textarea>
                    @error('excerpt')
                                <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="content">Nội dung bài viết (<i style="color: red">*</i>)</label>
                    <textarea name="content" class="form-control" id="content" cols="30" rows="15">{{ $post->content }}</textarea>
                    @error('content')
                                <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>


                <div class="form-group">
                    <label for="">Danh mục (<i style="color: red">*</i>)</label>
                    <select class="form-control" id="category" name="category">
                        <option selected></option>
                        @foreach ($categories as $category)
                        <option value="{{ $category->id }}" @if ($post->category_id == $category->id)
                            selected
                        @endif>{{ $category->name }}</option>
                            @if (count($category->children) > 0)
                                @foreach ($category->children as $child)
                                    <option value="{{ $child->id }}" @if ($post->category_id == $category->id)
                                        selected
                                    @endif>{{ $category->name }}->{{ $child->name }}</option>
                                        @if(count($child->children))
                                            @foreach($child->children as $grandchild)
                                            <option value="{{ $grandchild->id }}" @if ($post->category_id == $category->id)
                                                selected
                                            @endif>{{ $category->name }}->{{ $child->name }}->{{ $grandchild->name }}</option>
                                            @endforeach
                                        @endif
                                @endforeach
                            @endif
                        @endforeach
                    </select>
                    @error('category')
                                <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-btn">
                          <a id="post_img" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                            <i class="fa fa-picture-o"></i> Chọn ảnh đại diện bài viết (<i style="color: red">*</i>)
                          </a>
                        </span>
                        <input id="thumbnail" name="post_img" class="form-control" type="text" name="filepath" value="{{ $post->image->url }}">
                      </div>
                      <img id="holder" style="margin-top:15px;max-height:100px;">
                      <script>
                        var route_prefix = "http://localhost/adminIsmart/laravel-filemanager/";
                        $('#post_img').filemanager('image', {prefix: route_prefix});
                      </script>
                      @error('post_img')
                            <small class="text-danger d-block">{{ $message }}</small>
                        @enderror
                </div>
                <div class="form-group">
                    <label for="">Trạng thái (<i style="color: red">*</i>)</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status" value="archived" id="archived" @if($post->status == 'archived') checked @endif>
                        <label class="form-check-label" for="archived">
                            Lưu trữ
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status" value="published" id="published" @if($post->status == 'published') checked @endif>
                        <label class="form-check-label" for="published">
                            Công khai
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status" value="draft" id="draft" @if($post->status == 'draft') checked @endif>
                        <label class="form-check-label" for="draft">
                            Nháp
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status" value="pending" id="pending" @if($post->status == 'pending') checked @endif>
                        <label class="form-check-label" for="pending">
                            Viết chưa xong
                        </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Cập nhật</button>
            </form>
        </div>
    </div>
</div>
@endsection
