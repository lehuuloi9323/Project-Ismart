@extends('layouts.admin')
@section('title','Thêm người dùng')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Thêm người dùng
        </div>
        <div class="card-body">
            @if (!empty(session('status')))
            <div class="alert alert-success">{{ Session('status') }}</div>
        @endif
            <form method="POST" action="{{ route('user.handle_add') }}">
                @csrf
                <div class="form-group">
                    <label for="name">Họ và tên</label>
                    <input class="form-control" type="text" name="name" id="name" value="{{ old('name')}}"
                </div>
                @error('name')
                <small class="text-danger d-block">{{ $message }}</small>
                @enderror
                <div class="form-group">
                    <label for="email">Email</label>
                    <input class="form-control" type="email" name="email" id="email" value="{{ old('email') }}">
                </div>
                @error('email')
                <small class="text-danger d-block">{{ $message }}</small>
                @enderror
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input class="form-control" type="password" name="password" id="password">
                </div>
                <div class="form-group">
                    <label for="password_confirmation">Nhập lại mật khẩu</label>
                    <input class="form-control" type="password" name="password_confirmation" id="password_confirmation">
                </div>
                @error('password')
                <small class="text-danger d-block">{{ $message }}</small>
                @enderror
                <div class="form-group">
                    <label for="permission">Nhóm quyền</label>
                    <select class="form-control" id="roles" multiple name="role_id[]">
                        <option value="" selected>Chọn quyền</option>
                        @foreach ($roles as $role)
                        <option value="{{ $role->id }}">{{ $role->name }}</option>
                        @endforeach
                    </select>
                </div>

                <input type="submit" class="btn btn-primary" value="Thêm mới">
            </form>
        </div>
    </div>
</div>
@endsection
