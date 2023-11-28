@extends('layouts.admin')
@section('title', 'Danh sách slider')
@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold d-flex justify-content-between align-items-center">
            <h5 class="m-0 ">Danh sách slider</h5>

            {{--  <div class="form-search form-inline">
                <form action="#">
                    <input type="" class="form-control form-search" placeholder="Tìm kiếm">
                    <input type="submit" name="btn-search" value="Tìm kiếm" class="btn btn-primary">
                </form>
            </div>  --}}
        </div>
        <div class="card-body">
            <div class="analytic">
                <a href="{{ request()->fullUrlWithQuery(['status'=>'show']) }}" class="text-primary">Đang show<span class="text-muted">({{ $count_show }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'hide']) }}" class="text-primary">Đang ẩn<span class="text-muted">({{ $count_hide }})</span></a>
            </div>
            <br>
            @if (!empty(session('status')))
            <div class="alert alert-success">{{ Session('status') }}</div>
        @endif
            {{--  <div class="form-action form-inline py-3">
                <select class="form-control mr-1" id="">
                    <option>Chọn</option>
                    <option>Tác vụ 1</option>
                    <option>Tác vụ 2</option>
                </select>
                <input type="submit" name="btn-search" value="Áp dụng" class="btn btn-primary">
            </div>  --}}
            <table class="table table-striped table-checkall">
                <thead>
                    <tr>
                        <th scope="col">
                            <input name="checkall" type="checkbox">
                        </th>
                        <th scope="col">#</th>
                        <th scope="col">Ảnh</th>
                        <th scope="col">Đường dẫn đến</th>
                        <th scope="col">Người tạo</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @if($sliders->total() > 0)
                    @foreach ($sliders as $slider)
                    <tr class="">
                        <td>
                            <input type="checkbox">
                        </td>
                        <td>{{ $loop->iteration }}</td>
                        <td><img src="{{ asset('storage/photos/1/'.$slider->images->url) }}" style="width: 100px; height: 80px;" alt=""></td>
                        <td><a href="{{ route('product.detail', $slider->url) }}">{{ ucfirst($slider->title) }}</a></td>
                        <td>{{ $slider->users->name }}</td>
                        <td>{{ $slider->created_at }}</td>
                        <td>
                            @if($slider->display_order > 0)
                            <span class="badge badge-success">Đang show</span></td>
                            @else
                            <span class="badge badge-danger">Không show</span></td>
                            @endif

                        <td>
                            <a href="{{ route('slider.edit', $slider->id) }}" onclick="return confirm('Bạn chắc chắn muốn sửa slider ảnh này ?')" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                            <a href="{{ route('slider.delete', $slider->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa slider ảnh này ?')" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    @endforeach
                    @else
                        <td colspan="8">Hiện tại không có bản ghi nào !!</td>
                    @endif
                </tbody>
            </table>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    {{ $sliders->links() }}
                </ul>
            </nav>
        </div>
    </div>
</div>

@endsection
