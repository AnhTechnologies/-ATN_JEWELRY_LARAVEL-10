@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.account_admin.index') }}">Tài khoản</a></li>
                        <li class="breadcrumb-item active">Thêm mới tài khoản</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
                    <form role="form" action="" method="POST">
                         @csrf
                         <div class="row">
                            <div class="col-md-9">
                                 <div class="card card-primary">
                                      <div class="card-body">
                            <div class="form-group {{ $errors->first('name') ? 'has-error' : '' }}">
                                <label for="name">Tên <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ old('name') }}" name="name"  placeholder="Nhập tên ...">
                                @if ($errors->first('name'))
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                @endif
                            </div>
                      
                      
                            <div class="form-group {{ $errors->first('phone') ? 'has-error' : '' }}">
                                <label for="name">Số điện thoại <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" value="{{ old('phone') }}"  name="phone"  placeholder="Số điện thoại ...">
                                @if ($errors->first('phone'))
                                    <span class="text-danger">{{ $errors->first('phone') }}</span>
                                @endif
                            </div>
                     
                        
                            <div class="form-group {{ $errors->first('email') ? 'has-error' : '' }}">
                                <label for="name">Email <span class="text-danger">(*)</span></label>
                                <input type="email" class="form-control" value="{{ old('email') }}"  name="email"  placeholder="Email ...">
                                @if ($errors->first('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>
                       
                      
                            <div class="form-group ">
                                <label for="name">Chức vụ <span class="text-danger">(*)</span></label>
                                <select class="form-control" name="level">
                                    <option value="1">Admin</option>
                                    <option value="2">Nhân viên</option>
                                </select>
                            </div>
                        
                       
                            <div class="form-group {{ $errors->first('password') ? 'has-error' : '' }}">
                                <label for="name">Mật khẩu <span class="text-danger">(*)</span></label>
                                <input type="password" class="form-control" name="password"  placeholder="********">
                                @if ($errors->first('password'))
                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                @endif
                            </div>
                       
                      
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.account_admin.index') }}" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                                      </div>
                                 </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
