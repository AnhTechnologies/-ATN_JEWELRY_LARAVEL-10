@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="#">Xuất Kho</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="container-fluid">
                <div class="row">
              
                @php $sum = 0 ; @endphp
                <div class="col-12">
                    <div class="card">
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                            <tr>
                                <th class ="text-center align-middle">ID</th>
                                <th class ="text-center align-middle">Sản phẩm</th>
                                <th class ="text-center align-middle">Số lượng</th>
                                <th class ="text-center align-middle">Tổng tiền</th>
                                <th class ="text-center align-middle">Ngày mua</th>
                            </tr>
                                </thead>

                            </tbody>
                            @if (isset($inventoryExport))
                                @foreach($inventoryExport as $item)
                                    {{--									{{ dd($item) }}--}}
                                    <tr>
                                        <td class ="text-center align-middle">{{ $item->od_product_id }}</td>
                                        <td class ="align-middle"><a href="">{{ $item->product->pro_name ?? "[N\A]" }}</a></td>
                                        <td class ="text-center align-middle">{{ $item->od_qty }}</td>
                                        <td class ="text-center align-middle">{{ number_format($item->od_price,0,',','.') }}&nbsp;đ</td>
                                        <td class ="text-center align-middle">{{ $item->created_at  }}</td>
                                    </tr>
                                    @php
                                        $sum += $item->od_price;
                                    @endphp
                                @endforeach
                            @endif
                        </table>
                    </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                    <p> Tổng tiền <b>{{ number_format($sum,0,',','.') }} VNĐ</b></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.box -->
            <div class="box-footer">
                {!! $inventoryExport->appends($query ?? [])->links() !!}
            </div>
        </div>
    </section>
    <!-- /.content -->
@stop

@section('script')
    <script type="text/javascript" src="{{ asset('admin/bower_components/daterangepicker/moment.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('admin/bower_components/daterangepicker/daterangepicker.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="{{ asset('admin/bower_components/daterangepicker/daterangepicker.css') }}" />
    <script type="text/javascript">
        $(function(){
            $('input[name="time"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                    cancelLabel: 'Clear'
                } ,
                ranges: {
                    'Hôm nay': [moment(), moment()],
                    'Hôm qua': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '7 ngày trước': [moment().subtract(6, 'days'), moment()],
                    '30 ngày trước': [moment().subtract(29, 'days'), moment()],
                    'Tháng này': [moment().startOf('month'), moment().endOf('month')],
                    'Tháng trước': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                }
            });

            $('input[name="time"]').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
            });

            $('input[name="time"]').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
        })
    </script>
@stop
