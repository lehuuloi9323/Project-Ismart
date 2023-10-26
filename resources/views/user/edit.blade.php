@extends('layouts.admin')
@section('title','Cập nhật thông tin')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Cập nhật người dùng
        </div>
        <div class="card-body">
            {!! Form::open(['route'=>['user.update',$user->id], 'method'=>'POST']) !!}
            @csrf
            <div class="form-group">
                {!! Form::label('name', 'Họ và tên') !!}
                {!! Form::text('name', $user->name, ['class'=> 'form-control', 'id'=>'name']) !!}
            </div>
            @error('name')
                <small class="text-danger d-block">{{ $message }}</small>
            @enderror

            <div class="form-group">
                {!! Form::label('email', 'Email') !!}
                {!! Form::email('email', $user->email, ['class'=> 'form-control', 'id'=>'email', 'disabled'=>'disabled']) !!}
            </div>
            @error('email')
                <small class="text-danger d-block">{{ $message }}</small>
                @enderror

             <div class="form-group">
                {!! Form::label('password', 'Mật khẩu') !!}
                {!! Form::password('password', ['class'=> 'form-control', 'id'=>'password']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('password_confirmation', 'Nhập lại mật khẩu') !!}
                {!! Form::password('password_confirmation', ['class'=> 'form-control', 'id'=>'password_confirmation']) !!}
            </div>
            @error('password')
                <small class="text-danger d-block">{{ $message }}</small>
            @enderror
            <div class="form-group">
                {!! Form::label('roles', 'Nhóm quyền') !!}
                @php
                        $selectedRoles = $user->roles->pluck('id')->toArray();
                        $option = $roles->pluck('name', 'id')->toArray();
                    @endphp
                {!! Form::select('roles[]', $option, $selectedRoles, ['id'=>'roles', 'class'=>'form-control', 'multiple'=>true]) !!}

            </div>
            <input type="submit" class="btn btn-primary" value="Cập nhật">
            {!! Form::close() !!}


        </div>
    </div>
</div>
@endsection
