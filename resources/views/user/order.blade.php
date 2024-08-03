@extends('layouts.app_master_user')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/user.min.css') }}">
@stop
@section('content')
    <section>
        <div class="title" style="font-weight: bold;">Chi tiết đơn hàng #{{ $transaction->id }}</div>
        <div class="row">
            <div class="col-4">
                <h5 style="font-weight: bold;">Thông tin người nhận</h5>
                <div class="box">
                    <p><b>{{ $transaction->user->name ?? "[N\A]" }}</b></p>
                    <p>Địa chỉ: <span>{{ $transaction->tst_address }}</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5 style="font-weight: bold;">Hình thức giao hàng</h5>
                <div class="box">
                    <p>Phí vận chuyển : <span>0 đ</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5 style="font-weight: bold;">Hình thức thanh toán</h5>
                <div class="box">
                    <p>Hình thức: <b>Giao hàng nhận tiền</b></p>
                    <p>Tổng tiền: <b>{{ number_format($transaction->tst_total_money,0,',','.') }} đ</b></p>
                </div>
            </div>
        </div>
        <div class="content">
            <h4 style="font-weight: bold;">Thông tin sản phẩm</h4>
            @include('user.include._inc_list_product_order')
            <div>
                <a href="{{ route('get.user.transaction') }}" class="btn btn-light"><i class="fa fa-angle-double-left"></i> Quay lại đơn hàng</a>
                @if ($transaction->tst_status != -1)
                    <a href="{{ route('get.user.tracking_order', $transaction->id) }}" class="btn btn-primary js-">Theo dõi đơn hàng <i class="fa fa-angle-double-right"></i></a>
                @endif
            </div>
        </div>
    </section>
@stop
