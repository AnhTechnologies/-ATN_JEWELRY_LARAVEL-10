@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
        
        .css-tooltip:hover:after {
            content: attr(data-tooltip);
            position: absolute;
            z-index: 1;
            bottom: 100%;
            right: 0;
            width: 100%;
            background-color: rgba(251, 88, 88, 0.86);
            font-size: 11px;
            line-height: 1.6em;
            font-weight: 400;
            text-decoration: none;
            text-transform: none;
            text-align: center;
            color: #fff;
            padding: 5px;
            border-radius: 5px;
        }
    </style>
@stop
@section('content')
    <section>
        <div class="title" style="text-transform:capitalize; font-weight: bold;">Danh sách đơn hàng</div>
        <form class="form-inline">
            <div class="form-group " style="margin-right: 10px;">
                <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id" placeholder="ID">
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <select name="status" class="form-control">
                    <option value="">Trạng thái</option>
                    <option value="1" {{ Request::get('status') == 1 ? "selected='selected'" : "" }}>Tiếp nhận</option>
                    <option value="2" {{ Request::get('status') == 2 ? "selected='selected'" : "" }}>Đang vận chuyển
                    </option>
                    <option value="3" {{ Request::get('status') == 3 ? "selected='selected'" : "" }}>Đã bàn giao
                    </option>
                    <option value="-1" {{ Request::get('status') == -1 ? "selected='selected'" : "" }}>Huỷ bỏ</option>
                </select>
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <!-- <button type="submit" class="btn btn-pink btn-sm"><i class="fa fa-search"></i>&nbsp;Tìm kiếm</button> -->
                <button type="submit" class="btn label-success btn-sm"><i class="fa fa-search"></i>&nbsp;Tìm kiếm</button>
            </div>
        </form>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" style ="text-align: center; vertical-align: middle;">Mã đơn</th>
                        <th scope="col" style ="text-align: center; vertical-align: middle;">Tên khách hàng</th>
                        <th scope="col" style ="text-align: center; vertical-align: middle;">Tổng</th>
                        <th scope="col" style ="text-align: center; vertical-align: middle;">Thời gian</th>
                        <th scope="col" style ="text-align: center; vertical-align: middle;">Trạng thái</th>
                        <th scope="col" style ="text-align: center; vertical-align: center;">Xuất file</th>
                        <th scope="col" style ="text-align: center; vertical-align: center;">Hành động</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($transactions as $transaction)
                    <tr>
                        <td scope="row" style="text-align: center; vertical-align: middle; position:relative;" data-tooltip='Click để xem chi tiết' class="css-tooltip" >
                            <a href="{{ route('get.user.order', $transaction->id) }}">DH{{ $transaction->id }}</a>
                        </td>
                        <td style="text-align: center; vertical-align: middle">{{ $transaction->tst_name }}</td>
                        <td style="text-align: center; vertical-align: middle">{{ number_format($transaction->tst_total_money,0,',','.') }} đ</td>
                        <td style="text-align: center; vertical-align: middle">{{  $transaction->created_at }}</td>
                        <td style="text-align: center; vertical-align: middle">
                            <span
                                class="btn btn-xs label-success label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
                                {{ $transaction->getStatus($transaction->tst_status)['name'] }}
                            </span>
                            <!-- <span
                                class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
                                {{ $transaction->getStatus($transaction->tst_status)['name'] }}
                            </span> -->
                        </td>
                        <td style="text-align: center; vertical-align: middle;">
                            <a href="{{ route('ajax_get.user.invoice_transaction',$transaction->id) }}" target="_blank"
                               class="btn btn-xs label-success js-show-invoice_transaction" style="color: white"><i class="fa fa-save"></i>&nbsp;&nbsp;Xuất file</a>
                        </td>
                        <td style="text-align: center; vertical-align: middle;">
                            @if (!in_array($transaction->tst_status , [-1,2,3]) )
                                <a href="{{ route('get.user.transaction.cancel',$transaction->id) }}" 
                                   class="btn btn-xs label-danger" style="color: white"><i class="fa fa-trash"></i>&nbsp;&nbsp;Huỷ đơn</a>
                           @endif
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <div style="display: block;">
            {!! $transactions->appends($query ?? [])->links() !!}
        </div>
    </section>
@stop

@section('script')
    <div id="popup-transaction" class="modal text-center">
        {{-- <div class="header">Hoá đơn mua hàng</div> --}}
        <div class="content">

        </div>
        <div class="footer">
            <a href="#" rel="modal:close" class="btn btn-pink ">Đóng</a>
            <a href="" class="btn btn-purple js-export-pdf"> Xuất PDF</a>
        </div>
    </div>
@stop
