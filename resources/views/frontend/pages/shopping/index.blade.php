@extends('layouts.app_master_frontend')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/cart.min.css') }}">
@stop
@section('content')
    <div class="container cart">
        <div class="left">
            <div class="list">
                <div class="title" style="font-weight: bold;">THÔNG TIN GIỎ HÀNG</div>
                <div class="list__content">
                    <table class="table">
                        <thead>
                        <tr>
                            <th style="text-align: center; vertical-align: middle; width: 100px;"></th>
                            <th style="text-align: center; vertical-align: middle; width: 30%;">Sản phẩm</th>
                            <th style="text-align: center; vertical-align: middle;">Giá</th>
                            <th style="text-align: center; vertical-align: middle;">Số lượng</th>
                            <th style="text-align: center; vertical-align: middle;">Thành tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach($shopping as $key => $item)
                                <tr>
                                    <td style="text-align: center; vertical-align: middle;">
                                        <a href="{{ route('get.product.detail',\Str::slug($item->name).'-'.$item->id) }}"
                                            title="{{ $item->name }}" class="avatar image contain">
                                            <img alt="" src="{{ pare_url_file($item->options->image) }}" class="lazyload">
                                        </a>
                                    </td>
                                    <td style="text-align: center; vertical-align: middle;">
                                        <a href="{{ route('get.product.detail',\Str::slug($item->name).'-'.$item->id) }}"><strong>{{ $item->name }}</strong></a>
                                    </td>
                                    <td style="text-align: center; vertical-align: middle;">
                                        <p><b>{{  number_format($item->price,0,',','.') }} đ</b></p>
                                        <p>

                                            @if ($item->options->price_old)
                                                <span style="text-decoration: line-through;">{{  number_format(number_price($item->options->price_old),0,',','.') }} đ</span>
                                                <span class="sale">- {{ $item->options->sale }} %</span>
                                            @endif
                                        </p>
                                    </td>
                                    <td style="text-align: center; vertical-align: middle;">
                                        <div class="qty_number">
                                            <input type="number"  min="1" class="input_quantity" name="quantity_14692" value="{{  $item->qty }}" id="">
                                            <p data-price="{{ $item->price }}" data-url="{{  route('ajax_get.shopping.update', $key) }}" data-id-product="{{  $item->id }}">
                                                <span class="js-increase">+</span>
                                                <span class="js-reduction">-</span>
                                            </p>
                                            <a href="{{  route('get.shopping.delete', $key) }}" class="js-delete-item btn-action-delete"><i class="la la-trash"></i></a>
                                        </div>
                                    </td>
                                    <td style="text-align: center; vertical-align: middle;">
                                        <span class="js-total-item">{{ number_format($item->price * $item->qty,0,',','.') }}&nbsp;VNĐ</span>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <p style="float: right; margin-top: 20px; font-weight: bold;">Tổng tiền : <b id="sub-total">{{ \Cart::subtotal(0) }}&nbsp;VNĐ</b></p>
                </div>
            </div>
        </div>
        <div class="right">
            <div class="customer">
                <div class="title" style="font-weight: bold;">THÔNG TIN ĐẶT HÀNG</div>
                <div class="customer__content">
                    <form class="from_cart_register" action="{{ route('post.shopping.pay') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="name" >Họ và tên <span class="cRed">(*)</span></label>
                            <input name="tst_name" id="name" required="" value="{{ get_data_user('web','name') }}" type="text" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label for="phone">Điện thoại <span class="cRed">(*)</span></label>
                            <input name="tst_phone" id="phone" required="" value="{{ get_data_user('web','phone') }}" type="text" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ <span class="cRed">(*)</span></label>
                            <input name="tst_address" id="address" required="" value="{{ get_data_user('web','address') }}" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="email">Email <span class="cRed">(*)</span></label>
                            <input name="tst_email" id="email" required="" value="{{ get_data_user('web','email') }}" type="text" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="note">Ghi chú thêm</label>
                            <textarea name="tst_note" id="note" cols="3" style="min-height: 100px;" rows="2" class="form-control"></textarea>
                        </div>
						<div class="form-group">
                            <label for="note">Áp dụng mã giảm giá</label>
                            <div class="row">
                                <div class="col-md-8">
                                    <input type="text" value="" class="form-control discount_code" placeholder="Mã giảm giá" style="width: 60%; float: left;">
                                </div>
                                <div class="col-md-4">
                                    <button class="btn btn-purple btn-cart-discount" type="button" style="margin-left: 15px">
                                        <span class="">Áp dụng</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="btn-buy">
                            <button class="buy1 btn btn-purple {{ \Auth::id() ? '' : 'js-show-login' }}" style="width: 100%" type="submit" name="pay" value="online">
                                Thanh toán khi nhận hàng
                            </button>
                            <button class="buy1 btn btn-primary {{ \Auth::id() ? '' : 'js-show-login' }}" style="width: 100%;margin-top: 20px" type="submit" name="pay" value="transfer">
                                Thanh toán Online
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@stop
@section('script')
    <script src="{{ asset('js/cart.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/jquery-3.6.js') }}"></script>
    <script type="text/javascript" src="js/toastr.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $('.btn-cart-discount').click(function () {
                let URL = '{{ route('ajax_get.update.cart.discount') }}';
                let discount_code = $('.discount_code').val();

                $.ajax({
                    url: URL,
                    dataType: 'json',
                    data: {
                        discount_code : discount_code,
                    }
                }).done(function( results ) {
                   if (results.type === 'success') {
                       $('#sub-total').text(results.totalMoney + ' đ');
                       $('.discount_code').prop( "disabled", true );
                       $('.btn-cart-discount').prop( "disabled", true );
                   } else {
                       toastr.error(results.messages);
                   }
                });
            })
        })
    </script>
@stop
