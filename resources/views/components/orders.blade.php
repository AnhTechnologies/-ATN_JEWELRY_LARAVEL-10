<table class="table table-condensed">
    <tbody>
        <tr>
            <th style="text-align: center; vertical-align: middle;" style="width: 10px">#</th>
            <th style="text-align: center; vertical-align: middle;">Tên sản phẩm</th>
            <th style="text-align: center; vertical-align: middle;">Hình ảnh</th>
            <th style="text-align: center; vertical-align: middle;">Giá</th>
            <th style="text-align: center; vertical-align: middle;">Số lượng</th>
            <th style="text-align: center; vertical-align: middle;">Tổng</th>
            <th style="text-align: center; vertical-align: middle;">Hành động</th>
        </tr>
        @foreach($orders as $item)
            <tr>
                <td style="text-align: center; vertical-align: middle;">#{{ $item->id }}.</td>
                <td style="text-align: center; vertical-align: middle;"><a href="">{{ $item->product->pro_name ?? "[N\A]" }}</a></td>
                <td style="text-align: center; vertical-align: middle;">
                    <img alt="" style="width: 60px;height: 80px" src="{{ pare_url_file($item->product->pro_avatar ?? "") }}" class="lazyload">
                </td>
                <td style="text-align: center; vertical-align: middle;">{{ number_format($item->od_price,0,',','.') }} đ</td>
                <td style="text-align: center; vertical-align: middle;">{{ $item->od_qty }}</td>
                <td style="text-align: center; vertical-align: middle;">{{ number_format($item->od_price * $item->od_qty,0,',','.') }} đ</td>
                <td style="text-align: center; vertical-align: middle;">
                    <a href="{{ route('ajax_admin.transaction.order_item', $item->id) }}" class="btn btn-xs btn-danger js-delete-order-item"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>