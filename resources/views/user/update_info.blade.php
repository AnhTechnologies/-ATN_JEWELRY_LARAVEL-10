@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title" style="text-transform:capitalize; font-weight: bold;">Cập nhật thông tin</div>
        <form action="" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Tên khách hàng</label>
                <input type="text" name="name" class="form-control" value="{{ Auth::user()->name }}" placeholder="Nhập tên khách hàng ...">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" placeholder="Nhập email ...">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">Số điện thoại</label>
                <input type="number" name="phone" class="form-control" value="{{ Auth::user()->phone }}" placeholder="Nhập số điện thoại ...">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="form-group">
                <label for="">Địa chỉ</label>
                <input type="text" name="address" class="form-control" value="{{ Auth::user()->address }}" placeholder="Nhập địa chỉ ...">
                {{-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> --}}
            </div>
            <div class="from-group">
                <div class="upload-btn-wrapper">
                    <!-- <button class="btn-upload">Tải ảnh lên</button> -->
                    <button class="btn btn-blue btn-md" style="background: #f30;"><i class="fa fa-upload"></i>&nbsp;&nbsp;Tải ảnh lên</button>
                    <input type="file" name="avatar" />
                </div>
            </div>

            <button type="submit" class="btn btn-blue btn-md"><i class="fa fa-cloud-upload"></i>&nbsp;&nbsp;Cập nhật</button>
        </form>

    </section>
@stop
