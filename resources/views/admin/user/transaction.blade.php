<table class="table">
	<tbody>
	<tr>
		<th class="text-center align-middle"" style="width: 100px">Mã HĐ</th>
		<th class="text-center align-middle"">Trạng thái</th>
		<th class="text-center align-middle"">Ngày tạo</th>
		<th class="text-center align-middle"">Số tiền</th>
		<th class="text-center align-middle"">Dư nợ khách hàng</th>
		<th class="text-center align-middle"">Hành động</th>
	</tr>
	@if (isset($transactions))
		@foreach($transactions as $transaction)
			<tr>
				<td class="text-center align-middle">DH{{ $transaction->id }}</td>
				<td class="text-center align-middle">
					<span class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
						{{ $transaction->getStatus($transaction->tst_status)['name'] }}
					</span>
				</td>
				<td class="text-center align-middle">{{  $transaction->created_at }}</td>
				<td class="text-center align-middle">{{ number_format($transaction->tst_total_money,0,',','.') }}&nbsp;đ</td>
				<td class="text-center align-middle">{{ number_format($transaction->tst_total_money,0,',','.') }}&nbsp;đ</td>
				<td class="text-center align-middle">
					<a href="{{ route('admin.action.transaction',['success', $transaction->id]) }}" class="btn btn-success btn-xs js-success-transaction"><i class="fa fa-calculator"></i> Thanh toán</a>
				</td>
			</tr>
		@endforeach
	@endif
	</tbody>
</table>