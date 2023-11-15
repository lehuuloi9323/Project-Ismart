@extends('layouts.admin')

@section('title','Danh sách sản phẩm')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold d-flex justify-content-between align-items-center">
            <h5 class="m-0 ">Danh sách sản phẩm</h5>
            <div class="form-search form-inline">
                <form method="GET">
                    <input type="text" class="form-control form-search" placeholder="Tìm kiếm" name="keyword" value="{{ $keyword }}">
                    <input type="submit" name="btn-search" value="Search" class="btn btn-primary">
                </form>
            </div>
        </div>
        @if (!empty(session('status')))
                <div class="alert alert-success">{{ Session('status') }}</div>
                @endif
        {{--  {{ $status }}  --}}
        <div class="card-body">
            <div class="analytic">
                <a href="{{ request()->fullUrlWithQuery(['status'=>'active']) }}" class="text-primary">Hàng đang bán<span class="text-muted">({{ $count_active }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'inactive']) }}" class="text-primary">Tạm ngưng bán<span class="text-muted">({{ $count_inactive }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'out_of_stock']) }}" class="text-primary">Hết hàng<span class="text-muted">({{ $count_out_of_stock }})</span></a>
            </div>
            <div class="form-action form-inline py-3">
                <form action="{{ route('product.action') }}" method="GET">
                <select class="form-control mr-1" id="" name="actions">
                    <option value="">Chọn</option>
                    @if($status == 'active' or $status == '')
                    <option value="inactive">Tạm ngưng bán</option>
                    @elseif($status == 'inactive')
                    <option value="active">Bán sản phẩm</option>
                    @endif
                </select>
                <input type="submit" name="btn-search" value="Áp dụng" class="btn btn-primary">

            </div>

            <table class="table table-striped table-checkall">
                <thead>
                    <tr>
                        <th scope="col">
                            <input name="checkall" type="checkbox">
                        </th>
                        <th scope="col">#</th>
                        <th scope="col">Ảnh</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Danh mục</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @if($products->total() > 0)
                    @foreach ($products as $product)
                    <tr class="">
                        <td>
                            <input type="checkbox" name="list_check[]" value="{{ $product->id }}">
                        </td>
                        <td>{{ $loop->iteration }}</td>
                        <td><img src="{{ asset('storage/photos/1/Product/'. getImageUrlForProduct($product->id)) }}" title="$product->name" style="width: 60px; height: 60px;"></td>
                        <td><a href="#">{{ $product->name }}</a></td>
                        <td>{{ number_format($product->price, 0, '', '.') }}</td>
                        <td>{{ $product->Product_categories->name }}</td>
                        <td>{{ $product->created_at }}</td>
                        <td>
                            @if($product->stock_quantity > 0)
                            <span class="badge badge-success">Còn hàng</span>
                            @else
                            <span class="badge badge-dark">Hết hàng</span>
                            @endif
                        </td>
                        <td>
                            <a href="{{ route('product.edit', $product->id) }}" onclick="return confirm('Bạn chắc chắn muốn sửa sản phẩm này ?')" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                            <a href="{{ route('product.delete', $product->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa sản phẩm này ?')" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    @endforeach
                    @else
                    <tr>
                        <td colspan="9" style="text-align: center">Không tìm thấy bản ghi nào!
                        </td>
                        </tr>
                    @endif
                </tbody>
            </table>
            </form>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    {{ $products->links() }}
                </ul>
            </nav>
        </div>
    </div>
</div>
@endsection
