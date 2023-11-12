@extends('layouts.admin')
@section('title','Danh mục sản phẩm')

@section('content')

<div id="content" class="container-fluid">
    <div class="row">
        <div class="col-4">
            <div class="card">
                <div class="card-header font-weight-bold">
                    Danh mục sản phẩm
                </div>
                @if(session('status'))
                <div class="alert alert-success">{{ Session('status') }}</div>
                @endif
                <div class="card-body">
                    <form method="POST" action="{{ route('product.cat.add') }}">
                        @csrf
                        <div class="form-group">
                            <label for="name">Tên danh mục</label>
                            <input class="form-control" type="text" name="name" id="name">
                            @error('name')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="slug">Slug</label>
                            <input class="form-control" type="text" name="slug" id="slug">
                            @error('slug')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="name">Mô tả</label>
                            <input class="form-control" type="text" name="description" id="description">
                            @error('description')
                                <small class="text-danger d-block">{{ $message }}</small>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="">Danh mục cha</label>
                            <select class="form-control" id="" name="parent_id">
                                <option selected></option>
                                @foreach ($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @if (count($category->children) > 0)
                                        @foreach ($category->children as $child)
                                            <option value="{{ $child->id }}">{{ $category->name }}->{{ $child->name }}</option>
                                                @if(count($child->children))
                                                    @foreach($child->children as $grandchild)
                                                    <option value="{{ $grandchild->id }}">{{ $category->name }}->{{ $child->name }}->{{ $grandchild->name }}</option>
                                                    @endforeach
                                                @endif
                                        @endforeach
                                    @endif
                                @endforeach
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

                        <button type="submit" class="btn btn-primary mt-2">Thêm mới</button>
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
                            @php
                                $i = 1;
                            @endphp
                            @foreach ($categories as $category)
                            <tr>
                                <th scope="row">{{ $i++ }}</th>
                                <td>{{ $category->name }}</td>
                                <td>{{ $category->slug }}</td>
                                <td>{{ $category->description }}</td>
                                <td>{{ $category->users->name }}</td>
                                <td><a href="{{ route('product.cat.edit', $category->id) }}" onclick="return confirm('Bạn chắc chắn muốn sửa danh mục này ?')" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                                    <a href="{{ route('product.cat.delete', $category->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này ?')" class="btn btn-danger btn-sm rounded-0 text-white" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này ?')" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                                @if(count($category->children))
                                    @foreach ($category->children as $child)
                                    <tr>
                                        <th scope="row">{{ $i++ }}</th>
                                        <td>{{ $category->name }}->{{ $child->name }}</td>
                                        <td>{{ $child->slug }}</td>
                                        <td>{{ $child->description }}</td>
                                        <td>{{ $child->users->name }}</td>
                                        <td><a href="{{ route('product.cat.edit', $child->id) }}" onclick="return confirm('Bạn chắc chắn muốn sửa danh mục này ?')" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                                            <a href="{{ route('product.cat.delete', $child->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này ?')" class="btn btn-danger btn-sm rounded-0 text-white" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này ?')" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                        @if(count($child->children))
                                            @foreach($child->children as $grandchild)
                                            <tr>
                                                <th scope="row">{{ $i++ }}</th>
                                                <td>{{ $category->name }}->{{ $child->name }}->{{ $grandchild->name }}</td>
                                                <td>{{ $grandchild->slug }}</td>
                                                <td>{{ $grandchild->description }}</td>
                                                <td>{{ $grandchild->users->name }}</td>
                                                <td><a href="{{ route('product.cat.edit', $grandchild->id) }}" onclick="return confirm('Bạn chắc chắn muốn sửa danh mục này ?')" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                                                    <a href="{{ route('product.cat.delete', $grandchild->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này ?')" class="btn btn-danger btn-sm rounded-0 text-white" onclick="return confirm('Bạn chắc chắn muốn xóa danh mục này ?')" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                            @endforeach
                                        @endif
                                    @endforeach
                                @endif
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
{{--  <ul>
    @foreach($categories as $category)
        <li>
            {{ $category->name }}

            @if(count($category->children))
                <ul>
                    @foreach($category->children as $child)
                        <li>
                            |-{{ $child->name }}

                            @if(count($child->children))
                                <ul>
                                    @foreach($child->children as $grandchild)
                                        |-|-<li>{{ $grandchild->name }}</li>
                                    @endforeach
                                </ul>
                            @endif
                        </li>
                    @endforeach
                </ul>
            @endif
        </li>
    @endforeach
</ul>  --}}
@endsection
