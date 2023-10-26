@extends('layouts.admin')
@section('title','Cập nhật vai trò')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold d-flex justify-content-between align-items-center">
            <h5 class="m-0 ">Cập nhật vai trò</h5>
            <div class="form-search form-inline">
                <form action="#" method="GET">
                    <input type="" class="form-control form-search" placeholder="Tìm kiếm">
                    <input type="submit" name="btn-search" value="Search" class="btn btn-primary">
                </form>
            </div>
        </div>
        <div class="card-body">
            {!! Form::open(['route' => ['role.update', $role->id], 'method' => 'POST']) !!}
            @csrf
            <div class="form-group">
                {!! Form::label('name', 'Tên vai trò', ['class'=>'text-strong']) !!}
                {!! Form::text('name', $role->name, ['class' => 'form-control', 'id' =>'name']) !!}
                @error('name')
                    <small class="text-danger d-block">{{ $message }}</small>
                @enderror
            </div>

            <div class="form-group">
                {!! Form::label('description', 'Mô tả', ['class'=>'text-strong']) !!}
                {!! Form::text('description', $role->description, ['class' => 'form-control', 'id' =>'description']) !!}
                @error('description')
                    <small class="text-danger d-block">{{ $message }}</small>
                @enderror
            </div>
            <strong>Vai trò này có quyền gì?</strong>
            <small class="form-text text-muted pb-2">Check vào module hoặc các hành động bên dưới để chọn quyền.</small>
            @foreach ($permissions as $moduleName => $modulePermissions)
            <div class="card my-4 border">
                <div class="card-header">
                    {!! Form::checkbox(null, null, null, ['class'=>'check-all', 'id' => $moduleName]) !!}
                    {!! Form::label($moduleName, 'Module '.ucfirst($moduleName), ['class' => 'm-0']) !!}
                </div>
                <div class="card-body">
                    <div class="row">
                        @foreach ($modulePermissions as $permission)
                            <div class="col-md-3">
                                {!! Form::checkbox('permission_id[]', $permission->id, in_array($permission->id, $role->permissions->pluck('id')->toArray()), ['id' => $permission->slug, 'class'=> 'permission']) !!}

                                {!! Form::label($permission->slug, $permission->name) !!}

                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            @endforeach
            {!! Form::submit('Cập nhật', ['name'=>'btn-add', 'class' => 'btn btn-primary']) !!}
            {!! Form::close() !!}



{{--
            <form method="POST" action="{{ route('role.update', $role->id) }}">
                @csrf
                <div class="form-group">
                    <label class="text-strong" for="name">Tên vai trò</label>
                    <input class="form-control" type="text" name="name" id="name" value="{{ $role->name }}">
                    @error('name')
                        <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>
                <div class="form-group">
                    <label class="text-strong" for="description">Mô tả</label>
                    <textarea class="form-control" type="text" name="description" id="description">{{ $role->description }}</textarea>
                    @error('description')
                        <small class="text-danger d-block">{{ $message }}</small>
                    @enderror
                </div>
                <strong>Vai trò này có quyền gì?</strong>
                <small class="form-text text-muted pb-2">Check vào module hoặc các hành động bên dưới để chọn quyền.</small>
                @foreach ($permissions as $moduleName => $modulePermissions)
                <div class="card my-4 border">
                    <div class="card-header">
                        <input type="checkbox" class="check-all" name="" id="{{ $moduleName }}">
                        <label for="{{ $moduleName }}" class="m-0">Module {{ ucfirst($moduleName) }}</label>
                    </div>

                    <div class="card-body">
                        <div class="row">
                            @foreach ($modulePermissions as $permission)
                            <div class="col-md-3">
                                <input type="checkbox" class="permission" value="{{ $permission->id }}" name="permission_id[]" id="{{ $permission->slug }}">
                                <label for="{{ $permission->slug }}">{{ $permission->name }}</label>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                @endforeach
                <input type="submit" name="btn-add" class="btn btn-primary" value="Cập nhật">
            </form>

--}}


        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $('.check-all').click(function () {
        $(this).closest('.card').find('.permission').prop('checked', this.checked)
      })
</script>
@endsection
