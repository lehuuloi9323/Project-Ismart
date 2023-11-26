@extends('layouts.admin')
@section('title','Danh sách người dùng')
@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold d-flex justify-content-between align-items-center">
            <h5 class="m-0 ">Danh sách thành viên</h5>
            <div class="form-search form-inline">
                <form method="GET">
                    <input type="text" class="form-control form-search" name="keyword" value="{{ $keyword }}" placeholder="Tìm kiếm">
                    <input type="submit" name="btn-search" value="Search" class="btn btn-primary" style="width: 85px;">
                </form>
            </div>
        </div>

        @if (!empty(session('status')))
            <div class="alert alert-success">{{ Session('status') }}</div>
        @endif
        @if (!empty(session('warning')))
            <div class="alert alert-warning">{{ Session('warning') }}</div>
        @endif
        {{--  {{ $status }}  --}}
        <div class="card-body">
            <div class="analytic">
                <a href="{{ request()->fullUrlWithQuery(['status'=>'all']) }}" class="text-primary">Tất cả<span class="text-muted">({{ $countAll }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'active']) }}" class="text-primary">Kích hoạt<span class="text-muted">({{ $count }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'trash']) }}" class="text-primary">Vô Hiệu Hóa<span class="text-muted">({{ $counttrash }})</span></a>
            </div>
            <div class="form-action form-inline py-3">
            <form action="{{ route('user.action') }}" method="GET">
                <select name="actions" class="form-control">
                    <option value="0" name="act">Tác vụ</option>
                    @if ($status == 'active' or $status == '')
                    <option value="block">Khóa</option>
                    @else
                    <option value="restore">Khôi phục</option>
                    @endif
                    <option value="delete">Xóa vĩnh viễn</option>
                </select>
                <input type="submit" name="btn-search" value="Áp dụng" class="btn btn-primary">
            </div>
            <table class="table table-striped table-checkall">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" name="checkall">
                        </th>
                        <th scope="col">#</th>
                        <th scope="col">Họ tên</th>
                        <th scope="col">Username</th>
                        <th scope="col">Email</th>
                        <th scope="col">Quyền</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                @if($status == 'all' or $status == '')
                @foreach ($users as $user)
                <tr>
                    <td>
                        <input type="checkbox" name="list_check[]" value="{{ $user->id }}">
                    </td>
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->email }}</td>
                    <td>
                        @foreach ($user->roles as $role)
                        <span class="badge badge-warning">{{ $role->name }}</span>
                        @endforeach
                        </td>
                    <td>{{ $user->created_at }}</td>
                    <td>
                        <a href="{{ route('user.edit', $user->id) }}" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                        <a href="{{ route('user.delete', $user->id) }}" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
                @endforeach

                @foreach ($userslock as $userlock)
                <tr class="table-danger">
                    <td>
                        <input type="checkbox" name="list_check[]" value="{{ $user->id }}">
                    </td>
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ $userlock->name }}</td>
                    <td>{{ $userlock->email }}</td>
                    <td>{{ $userlock->email }}</td>
                    <td> @foreach ($user->roles as $role)
                        <span class="badge badge-warning">{{ $role->name }}</span>
                        @endforeach</td>
                    <td>{{ $userlock->created_at }}</td>
                    <td>
                        {{--  <a href="{{ route('user.edit', $user->id) }}" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                        <a href="{{ route('user.delete', $user->id) }}" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>  --}}
                    </td>
                </tr>
                @endforeach
                @elseif($status == 'active')
                    @if ($users->total() > 0)
                    @foreach ($users as $user)
                    <tr>
                        <td>
                            <input type="checkbox" name="list_check[]" value="{{ $user->id }}">
                        </td>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->email }}</td>
                        <td><span class="badge badge-warning">Đang xử lý</span></td>
                        <td>{{ $user->created_at }}</td>
                        <td>
                            <a href="{{ route('user.edit', $user->id) }}" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                            <a href="{{ route('user.delete', $user->id) }}" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    @endforeach
                    @else
                    <tr>
                        <td colspan="8" style="text-align: center">Không tìm thấy bản ghi nào!
                        </td>
                        </tr>
                    @endif
                @else
                @if ($users->total() > 0)
                    @foreach ($users as $user)
                    <tr>
                        <td>
                            <input type="checkbox" name="list_check[]" value="{{ $user->id }}">
                        </td>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->email }}</td>
                        <td> @foreach ($user->roles as $role)
                            <span class="badge badge-warning">{{ $role->name }}</span>
                            @endforeach</td>
                        <td>{{ $user->created_at }}</td>
                        <td>
                            {{--  <a href="{{ route('user.edit', $user->id) }}" class="btn btn-success btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                            <a href="{{ route('user.delete', $user->id) }}" class="btn btn-danger btn-sm rounded-0 text-white" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>  --}}
                        </td>
                    </tr>
                    @endforeach
                    @else
                    <tr>
                        <td colspan="8" style="text-align: center">Không tìm thấy bản ghi nào!
                        </td>
                        </tr>
                    @endif
                @endif
                </tbody>
            </table>
        </form>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    {{ $users->links() }}
                </ul>
            </nav>
        </div>
    </div>
</div>
@endsection
