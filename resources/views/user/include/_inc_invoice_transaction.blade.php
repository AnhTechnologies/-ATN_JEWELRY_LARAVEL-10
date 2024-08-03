<div class="wrapper" id="wrapper" style="max-width: 780px;margin: 20px auto;padding: 5px 10px;">
	<div class="" style="display: flex;justify-content: space-between;">
        <a href="">
            <img style="width: 217px;" src="{{  asset('images/logoorder.png') }}" alt="Web ban sách">
        </a>
        <div style="text-align: right;width: 50%">
            <p style="margin: 0; font-size: 25px;"><b>JEWELRY</b></p>
            <p style="margin: 0"><b>Mã số thuế::&nbsp;..................</b></p>
            <p style="margin: 0"><b>Địa chỉ:&nbsp;Hà Nội </b></p>
            <p style="margin: 0"><b>STK:&nbsp;............</b></p>
            <p style="margin: 0"><b>Điện thoại:&nbsp;{{ $transaction->tst_phone }}</b></p>
        </div>
    </div>
    <h2 style="    font-size: 34px;
    font-weight: bold;
    text-transform: uppercase;
    color: #666;
    padding: 30px 0;">Hoá đơn</h2>
    <p style="text-align: left;"><b>Họ tên người mua hàng:&nbsp;...&nbsp;{{ $transaction->tst_name }}&nbsp;...</b></p>
    <p style="text-align: left;"><b>Nội dung:&nbsp;...&nbsp;{{ $transaction->tst_note }}&nbsp;...</b></p>
	<div class="table-responsive" style="margin-top: 50px;">
		<div class="table table-striped">
			<table style="width: 100%;border: 1px solid #dedede;">
				<tr style="border-bottom: 1px solid #dedede">
					<th style="text-align: center; font-weight: bold">STT</th>
					<th style="text-align: center; font-weight: bold">Tên mặt hàng</th>
					<th style="text-align: center; font-weight: bold">Số tiền</th>
					<th style="text-align: center; font-weight: bold">Số lượng</th>
					<th style="text-align: center; font-weight: bold">Thành tiền</th>
				</tr>
				@foreach($orders as $key => $order)
					<tr>
						<td style="text-align: center">{{ ($key + 1) }}</td>
						<td style="text-align: center">{{ $order->product->pro_name ?? "[N\A]"  }}</td>
						<td style="text-align: center">{{ number_format($order->od_price,0,',','.') }}&nbsp;VNĐ</td>
						<td style="text-align: center">{{ $order->od_qty }}</td>
						<td style="text-align: center">{{ number_format($order->od_price * $order->od_qty,0,',','.') }}</td>
					</tr>
				@endforeach
			</table>
		</div>
	</div>
	<p style="margin:20px 0;text-align: right"><b>Tổng tiền thanh toán:&nbsp;{{ number_format($transaction->tst_total_money,0,',','.') }} VNĐ</b></p>
	<div style="">
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0"><b>Người mua hàng</b></h3>
			<p style="margin: 0"><i>(Ký ghi rõ họ tên)</i></p>
			<span style="margin-top: 50px;display: block"><b><i>{{ $transaction->tst_name }}</i></b></span>
		</div>
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0"><b>Người bán</b></h3>
			<p style="margin: 0"><i>(Ký ghi rõ họ tên)</i></p>
			<span style="margin-top: 50px;display: block"><i><b>Jewelry</b></i></span>
		</div>
		<div style="clear: both"></div>
	</div>
</div>