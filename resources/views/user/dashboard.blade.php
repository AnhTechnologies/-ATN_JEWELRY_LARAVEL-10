@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title" style="font-weight: bold; text-transform: capitalize;">Trang tổng quan cá nhân</div>
        <div class="row">
            <div class="col-3">
                <div class="box-count" style="background: #00c0ef">
                    <div class="count-text" style="font-weight: bold; text-transform: capitalize;">{{ $totalTransaction }}</div>
                    <p class="count-name" style="font-weight: bold; text-transform: capitalize;">Tổng đơn</p>
                </div>
            </div>
            <div class="col-3">
                <div class="box-count" style="background: #dd4b39">
                    <div class="count-text" style="font-weight: bold; text-transform: capitalize;">{{ $totalTransactionCancel }}</div>
                    <p class="count-name" style="font-weight: bold; text-transform: capitalize;">Đơn huỷ</p>
                </div>
            </div>
            <div class="col-3">
                <div class="box-count" style="background: #f39c12">
                    <div class="count-text" style="font-weight: bold; text-transform: capitalize;">{{ $totalTransactionProcess }}</div>
                    <p class="count-name" style="font-weight: bold; text-transform: capitalize;">Tiếp nhận && Giao hàng</p>
                </div>
            </div>
            <div class="col-3">
                <div class="box-count" style="background: #00a65a">
                    <div class="count-text" style="font-weight: bold; text-transform: capitalize;">{{ $totalTransactionSuccess }}</div>
                    <p class="count-name" style="font-weight: bold; text-transform: capitalize;">Hoàn thành</p>
                </div>
            </div>
        </div>
    </section>
@stop
