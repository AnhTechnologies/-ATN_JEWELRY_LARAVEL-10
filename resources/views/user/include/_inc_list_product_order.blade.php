<table class="table">
    <thead>
    <tr>
        <th style="width: 100px; text-align: center; vertical-align: middle;">Hình ảnh</th>
        <th style="width: 30%; text-align: center; vertical-align: middle;">Sản phẩm</th>
        <th class="text-center" style="text-align: center; vertical-align: middle;">Giá</th>
        <th class="text-center" style="text-align: center; vertical-align: middle;">Số lượng</th>
        <th class="text-center" style="text-align: center; vertical-align: middle;">Thành tiền</th>
    </tr>
    </thead>
    <tbody>
    @foreach($orders as $key => $item)
        <tr>
            <td style="text-align: center; vertical-align: middle;">
                <a href="{{ route('get.product.detail',\Str::slug($item->product->pro_slug ?? '').'-'.$item->od_product_id) }}"
                   title="{{ $item->name }}" class="avatar image contain">
                    <img alt="" src="{{ pare_url_file($item->product->pro_avatar ?? '') }}" style="width: 80px;height: 80px;" class="lazyload">
                </a>
            </td>
            <td style="text-align: center; vertical-align: middle;">
                <a href="{{ route('get.product.detail',\Str::slug($item->product->pro_slug ?? '').'-'.$item->od_product_id) }}">
                    <strong>{{ strtolower($item->product->pro_name ?? '') }}</strong>
                </a>
            </td>
            <td style="text-align: center; vertical-align: middle;" class="text-center">
                <p><b>{{  number_format($item->od_price,0,',','.') }} đ</b></p>
            </td>
            <td style="text-align: center; vertical-align: middle;" class="text-center">
                <span>{{ $item->od_qty }}</span>
            </td>
            <td style="text-align: center; vertical-align: middle;" class="text-center">
                <span class="js-total-item"><b>{{ number_format($item->od_price * $item->od_qty,0,',','.') }} đ</b></span>
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
