@extends('layouts.admin')

@section('title','Thêm sản phẩm')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Thêm sản phẩm
        </div>
        @if (!empty(session('status')))
            <div class="alert alert-success">{{ Session('status') }}</div>
        @endif
        <div class="card-body">
            <form method="POST" action="{{ route('product.storeadd') }}" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="name">Tên sản phẩm (<i style="color: red">*</i>)</label>
                            <input class="form-control" value="{{ old('name') }}" type="text" name="name" id="name">
                            @error('name')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="price">Giá sản phẩm (<i style="color: red">*</i>)</label>
                            <input class="form-control" type="number" value="{{ old('price') }}" name="price" id="price">
                            @error('price')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="quantity">Số lượng của sản phẩm (<i style="color: red">*</i>)</label>
                            <input class="form-control" type="number" value="{{ old('quantity') }}" name="quantity" id="quantity">
                            @error('quantity')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group" style="margin-top:35px">
                            <input type="checkbox" name="is_featured" id="is_featured" value="1">
                            <label for="is_featured">Sản phẩm nổi bật</label>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label for="product_detail">Chi tiết sản phẩm (<i style="color: red">*</i>)</label>
                            <textarea name="product_detail" id="product_detail" cols="5" rows="15">{{ old('product_detail') }}</textarea>
                            @error('product_detail')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="product_description">Mô tả sản phẩm (<i style="color: red">*</i>)</label>
                    <textarea name="product_description" id="product_description" cols="30" rows="15">{{ old('product_description') }}</textarea>
                    @error('product_description')
                                <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>


                <div class="form-group">
                    <label for="category">Danh mục (<i style="color: red">*</i>)</label>
                    <select class="form-control" id="category" name="category">
                        <option value="" selected>---</option>
                    @foreach ($categories as $category)
                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                    @endforeach

                    </select>
                    @error('category')
                        <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>
                {{--  <div class="form-group">
                    <div class="file-input">
                        <label for="product_img">
                            <i class="fas fa-upload"></i>Chọn ảnh đại diện sản phẩm
                        </label>
                        <input type="file" name="product_img" accept="image/jpeg, image/png, image/svg, image/jpg, image/webp" id="product_img" style="background-color: aliceblue;
                        color: cornflowerblue;">
                        @error('product_img')
                            <small class="text-danger d-block">{{ $message }}</small>
                        @enderror
                    </div>
                </div>  --}}

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-btn">
                          <a id="product_img" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                            <i class="fa fa-picture-o"></i> Chọn ảnh đại diện sản phẩm (<i style="color: red">*</i>)
                          </a>
                        </span>
                        <input id="thumbnail" name="product_img" class="form-control" type="text" name="filepath" value="{{ old('product_img') }}">
                      </div>
                      <img id="holder" style="margin-top:15px;max-height:100px;">
                      <script>
                        var route_prefix = "http://localhost/adminIsmart/laravel-filemanager/";
                        $('#product_img').filemanager('image', {prefix: route_prefix});
                      </script>
                      @error('product_img')
                            <small class="text-danger d-block">{{ $message }}</small>
                        @enderror
                </div>

                <div class="form-group">
                    <div class="file-input">
                        <label for="list_product_img">
                            <i class="fas fa-upload"></i>Thư viện ảnh sản phẩm (<i style="color: red">*</i>)
                        </label>
                        <input type="file" name="list_product_img[]" accept="image/jpeg, image/png, image/svg, image/jpg, image/webp" id="list_product_img" style="background-color: aliceblue;
                        color: cornflowerblue;" multiple>
                    </div>
                    <small class="text-secondary d-block">Không cần thêm lại ảnh đại diện sản phẩm !</small>
                    @error('list_product_img')
                        <small class="text-danger d-block">{{ $message }}</small>
                    @enderror

                </div>

                <div class="form-group">
                    <label for="">Trạng thái (<i style="color: red">*</i>)</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status1" value="inactive" checked>
                        <label class="form-check-label" for="status1">
                            Chờ duyệt
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="status" id="status2" value="active">
                        <label class="form-check-label" for="status2">
                            Công khai
                        </label>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Thêm mới</button>
            </form>
        </div>
    </div>
</div>
@endsection
