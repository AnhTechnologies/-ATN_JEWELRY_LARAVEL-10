@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Thêm mới </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home&nbsp;&nbsp;/</a></li>
            <li class="active">&nbsp;&nbsp;Cập nhật nhập kho</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                        @csrf
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="name">Số lượng <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" name="w_qty"  value="{{ $warehouse->w_qty }}" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="name">Giá <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" name="w_price" value="{{ $warehouse->w_price }}"  placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="name">Sản phẩm <span class="text-danger">(*)</span></label>
                                <select name="w_product_id" class="form-control" id="">
                                    <option value="0">__ROOT__</option>
                                    @foreach($products as $item)
                                        <option value="{{ $item->id }}" {{ $warehouse->w_product_id == $item->id ? "selected" : "" }}>{{ $item->pro_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
