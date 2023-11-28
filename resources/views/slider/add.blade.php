@extends('layouts.admin')
@section('title', 'Thêm ảnh slider')
@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Thêm slider
        </div>

        @if (!empty(session('status')))
            <div class="alert alert-success">{{ Session('status') }}</div>
        @endif
        <div class="card-body">
            <form method="POST" action="{{ route('slider.storeadd') }}" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="title">Tiều đề (<i style="color: red">*</i>)</label>
                            <input class="form-control" value="{{ old('title') }}" type="text" name="title" id="title">
                            @error('title')
                            <small class="text-danger d-block">{{ $message }}</small>
                        @enderror
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <label for="url">Đường link trỏ đến sản phẩm (<i style="color: red">*</i>)</label>
                            <small class="text-secondary d-block">Ví dụ trỏ đến sản phẩm có id = 5 thì chỉ cần nhập 5</small>
                            <input class="form-control" value="{{ old('url') }}" type="number" name="url" id="url">
                            @error('url')
                            <small class="text-danger d-block">{{ $message }}</small>
                        @enderror
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <label for="display_order">Thứ tự xuất hiện của ảnh (<i style="color: red">*</i>)</label>
                            <small class="text-secondary d-block">Nếu có ảnh có vị trí xuất hiện ở vị trí này rồi thì ảnh đó sẽ không còn xuất hiện nữa</small>
                            <input class="form-control" value="{{ old('display_order') }}" type="number" name="display_order" id="display_order">
                            @error('display_order')
                            <small class="text-danger d-block">{{ $message }}</small>
                        @enderror
                        </div>
                    </div>


                </div>
                <div class="form-group">
                    <div class="form-group">
                        <label for="description">Mô tả (<i style="color: red">*</i>)</label>
                        <input class="form-control" value="{{ old('description') }}" type="text" name="description" id="description">
                        @error('description')
                        <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                    </div>

                </div>


                <div class="form-group">
                    <label for="img">Chọn ảnh (<i style="color: red">*</i>)</label>
                    <div class="input-group">
                        <span class="input-group-btn">
                          <a id="img" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                            <i class="fa fa-picture-o"></i> Chọn ảnh(<i style="color: red">*</i>)
                          </a>
                        </span>
                        <input id="thumbnail" name="img" class="form-control" type="text" value="{{ old('img') }}">
                      </div>
                      <img id="holder" style="margin-top:15px;max-height:100px;">
                      <script>
                        var route_prefix = "http://localhost/adminIsmart/laravel-filemanager/";
                        $('#img').filemanager('image', {prefix: route_prefix});
                      </script>
                      @error('img')
                            <small class="text-danger d-block">{{ $message }}</small>
                        @enderror
                </div>

                <button type="submit" class="btn btn-primary">Thêm mới</button>
            </form>
        </div>
    </div>
</div>
@endsection
