@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title" style ="text-transform:capitalize; font-weight: bold;">Danh sách sản phẩm yêu thích</div>
        <div class="row mb-5">
           <div class="col-sm-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style ="text-align: center; vertical-align: middle;" scope="col">Mã đơn</th>
                            <th style ="text-align: center; vertical-align: middle;" class="w-25" scope="col">Tên sản phẩm</th>
                            <th style ="text-align: center; vertical-align: middle;" scope="col">Danh mục sản phẩm</th>
                            <th style ="text-align: center; vertical-align: middle;" scope="col">Ảnh</th>
                            <th style ="text-align: center; vertical-align: middle;" scope="col">Giá</th>
                            <th style ="text-align: center; vertical-align: middle;" scope="col">Hành động</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $item)
                            <tr>
                                <th style ="text-align: center; vertical-align: middle;" scope="row">DH{{ $item->id }}</th>
                                <th style ="text-align: center; vertical-align: middle;">{{ $item->pro_name }}</th>
                                <th style ="text-align: center; vertical-align: middle;">
                                    <span class="label label-success">{{ $item->category->c_name ?? "[N\A]" }}</span>
                                </th>
                                <th style ="text-align: center; vertical-align: middle;">
                                    <img src="{{ pare_url_file($item->pro_avatar) }}" style="width: 80px;height: 100px">
                                </th>
                                <th style ="text-align: center; vertical-align: middle;">{{ number_format($item->pro_price,0,',','.') }} đ</th>
                                <th style ="text-align: center; vertical-align: middle;">
                                    <!-- <a class="btn btn-light" href="{{  route('get.user.favourite.delete', $item->id) }}">Huỷ bỏ</a> -->
                                    <a class="btn btn-xs label-danger" href="{{  route('get.user.favourite.delete', $item->id) }}"><i class="fa fa-trash"></i>&nbsp;&nbsp;Huỷ bỏ</a>
                                </th>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
           </div>
        </div>
    </section>
@stop
