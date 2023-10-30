@extends('layouts.admin')

@section('title','Thêm sản phẩm')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Thêm sản phẩm
        </div>
        <div class="card-body">
            <form method="POST" action="{{ route('product.storeadd') }}">
                @csrf
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="name">Tên sản phẩm</label>
                            <input class="form-control" type="text" name="name" id="name">
                        </div>
                        <div class="form-group">
                            <label for="name">Giá</label>
                            <input class="form-control" type="text" name="name" id="name">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <label for="intro">Chi tiết sản phẩm</label>
                            <textarea name="product_detail" class="" id="intro" cols="5" rows="15"></textarea>
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label for="intro">Mô tả sản phẩm</label>
                    <textarea name="product_description" class="form-control" id="intro" cols="30" rows="15"></textarea>
                </div>


                <div class="form-group">
                    <label for="">Danh mục</label>
                    <select class="form-control" id="">
                        <option>Chọn danh mục</option>
                        <option>Danh mục 1</option>
                        <option>Danh mục 2</option>
                        <option>Danh mục 3</option>
                        <option>Danh mục 4</option>
                    </select>
                </div>
                <div class="form-group">
                    <div class="file-input">
                        <label for="product_img">
                            <i class="fas fa-upload"></i>Chọn ảnh đại diện sản phẩm
                        </label>
                        <input type="file" name="product_img" id="product_img" style="background-color: aliceblue;
                        color: cornflowerblue;">
                    </div>
                </div>
                <div class="form-group">
                    <div class="file-input">
                        <label for="list_product_img">
                            <i class="fas fa-upload"></i>Thư viện ảnh sản phẩm
                        </label>
                        <input type="file" name="list_product_img[]" accept="image/jpeg, image/png" id="list_product_img" style="background-color: aliceblue;
                        color: cornflowerblue;" multiple>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">Trạng thái</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                        <label class="form-check-label" for="exampleRadios1">
                            Chờ duyệt
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                        <label class="form-check-label" for="exampleRadios2">
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
