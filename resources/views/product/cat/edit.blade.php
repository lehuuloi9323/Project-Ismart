@extends('layouts.admin')
@section('title','Sửa danh mục sản phẩm')

@section('content')

<div id="content" class="container-fluid">
    <div class="row">
        <div class="col-4">
            <div class="card">
                <div class="card-header font-weight-bold">
                    Cập nhật
                </div>
                @if(session('status'))
                <div class="alert alert-success">{{ Session('status') }}</div>
                @endif
                <div class="card-body">
                    <form method="POST" action="{{ route('product.cat.update', $product_category->id) }}">
                        @csrf
                        <div class="form-group">
                            <label for="name">Tên danh mục (<i style="color: red">*</i>)</label>
                            <input class="form-control" type="text" name="name" id="name" value="{{ $product_category->name }}">
                            @error('name')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="slug">Slug (<i style="color: red">*</i>)</label>
                            <input class="form-control" type="text" name="slug" id="slug" value="{{ $product_category->slug }}">
                            @error('slug')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="name">Mô tả (<i style="color: red">*</i>)</label>
                            <input class="form-control" type="text" name="description" id="description" value="{{ $product_category->description }}">
                            @error('description')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="">Danh mục cha</label>
                            <select class="form-control" id="" name="parent_id">
                                @if($product_category->parent_id != 0)
                                <option value=""></option>
                                @foreach($product_categories as $category)
                                <option value="{{ $category->id }}" @if($category->id == $product_category->parent_id) selected @endif>
                                    {{ $category->name }}
                                </option>
                                @endforeach

                                @else
                                <option selected></option>
                                @foreach ($product_categories as $category)
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                                @endif
                            </select>
                        </div>
                        {{--  <div class="form-group">
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
                        </div>  --}}

                        <button type="submit" class="btn btn-primary mt-2">Cập nhật</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-8">
            <div class="card">
                <div class="card-header font-weight-bold">
                    Danh sách danh mục sản phẩm
                </div>
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Tên</th>
                                <th scope="col">Slug</th>
                                <th scope="col">Mô tả</th>
                                <th scope="col">Người tạo</th>
                                <th scope="col">Tác vụ</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($product_categories as $category)
                            <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $category->name }}</td>
                                <td>{{ $category->slug }}</td>
                                <td>{{ $category->description }}</td>
                                <td>{{ $category->users->name }}</td>
                                <td><a href="{{ route('product.cat.edit', $category->id) }}" onclick="return confirm('Bạn chắc chắn muốn sửa danh mục này ?')" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                                    <a href="{{ route('product.cat.delete', $category->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này ?')" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
@endsection
