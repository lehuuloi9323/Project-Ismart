@extends('layouts.admin')

@section('title', 'Danh sách bài viết')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold d-flex justify-content-between align-items-center">
            <h5 class="m-0 ">Danh sách bài viết</h5>
            <div class="form-search form-inline">
                <form method="GET">
                    <input type="text" class="form-control form-search" placeholder="Tìm kiếm" name="keyword"  value="{{ $keyword }}">
                    <input type="submit" name="btn-search" value="Search" class="btn btn-primary">
                </form>
            </div>
        </div>
        @if (!empty(session('status')))
                <div class="alert alert-success">{{ Session('status') }}</div>
                @endif
        <div class="card-body">
            <div class="analytic">
                <a href="{{ request()->fullUrlWithQuery(['status'=>'published']) }}" class="text-primary">Công khai<span class="text-muted">({{ $count_published }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'archived']) }}" class="text-primary">Lưu trữ<span class="text-muted">({{ $count_archived }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'draft']) }}" class="text-primary">Nháp<span class="text-muted">({{ $count_draft }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'pending']) }}" class="text-primary">Chưa viết xong<span class="text-muted">({{ $count_pending }})</span></a>
            </div>
            <div class="form-action form-inline py-3">
                <form action="{{ route('post.action') }}" method="GET">
                <select class="form-control mr-1" id="action" name="action">
                    <option value="">Tác vụ</option>
                    @if($status == '' or $status == 'published')
                    <option value="archived">Chuyển sang Lưu trữ</option>
                    <option value="pending">Chuyển sang Chưa viết xong</option>
                    <option value="draft">Chuyển thành bản nháp</option>
                    @elseif ($status == 'archived')
                    <option value="pending">Chuyển sang Chưa viết xong</option>
                    <option value="draft">Chuyển thành bản nháp</option>
                    <option value="published">Công khai bài viết</option>
                    @elseif ($status == 'draft')
                    <option value="archived">Chuyển sang Lưu trữ</option>
                    <option value="pending">Chuyển sang Chưa viết xong</option>
                    <option value="published">Công khai bài viết</option>
                    @if($status == 'pending')
                    <option value="archived">Chuyển sang Lưu trữ</option>
                     <option value="draft">Chuyển thành bản nháp</option>
                    <option value="published">Công khai bài viết</option>
                    @endif
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
                        <th scope="col">Tiêu đề</th>
                        <th scope="col">Danh mục</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Người viết</th>
                        <th scope="col">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @if($posts->total() > 0)


                    @foreach ($posts as $post)


                    <tr>
                        <td>
                            <input type="checkbox" name="list_check[]" value="{{ $post->id }}">
                        </td>
                        <td scope="row">{{ $loop->iteration }}</td>
                        <td><img src="{{ asset('storage/photos/1/Post/'.$post->image->url)}}" title="$post->title" style="width: 60px; height: 60px;" alt=""></td>
                        <td><a href="{{ route('post.edit', $post->id) }}">{{ $post->title }}</a></td>
                        <td>{{ $post->Product_categories->name }}</td>
                        <td>{{ $post->created_at }}</td>
                        <td>{{ $post->Users->name }}</td>
                        <td>
                            <a href="{{ route('post.edit', $post->id) }}" onclick="return confirm('Bạn chắc chắn muốn sửa bài viết này ?')" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                            <a href="{{ route('post.delete', $post->id) }}" onclick="return confirm('Bạn chắc chắn muốn xóa bài viết này ?')" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
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
                    {{ $posts->links() }}
                </ul>
            </nav>
        </div>
    </div>
</div>
@endsection
