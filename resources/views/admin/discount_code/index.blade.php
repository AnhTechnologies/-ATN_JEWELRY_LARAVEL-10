@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.discount.code.index') }}">Giảm giá</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-tools">
                                <div class="btn-group">
                                    <a href="{{ route('admin.discount.code.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="align-middle text-center" style="width: 10px">#</th>
                                    <th class ="align-middle text-center">Mã code</th>
                                    <th class ="align-middle text-center">Số lượt sử dụng</th>
                                    <th class ="align-middle text-center">Ngày bắt đầu</th>
                                    <th class ="align-middle text-center">Ngày kết thúc</th>
                                    <th class ="align-middle text-center">Phần trăm giảm giá</th>
                                    <th class ="align-middle text-center">Hành động</th>
                                </tr>
                                @if ($discountCodes)
                                    @foreach($discountCodes as $key => $discount)
                                        <tr>
                                            <td class ="align-middle text-center">{{ $discount->id }}</td>
                                            <td class ="align-middle text-center">{{ $discount->d_code }}</td>
                                            <td class ="align-middle text-center">{{ $discount->d_number_code }}</td>
                                            <td class ="align-middle text-center">{{ $discount->d_date_start }}</td>
                                            <td class ="align-middle text-center">{{ $discount->d_date_end }}</td>
                                            <td class ="align-middle text-center">{{ $discount->d_percentage }} %</td>
                                            <td class ="align-middle text-center">
                                                <a href="{{ route('admin.discount.code.update', $discount->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i>&nbsp;Sửa</a>
                                                <a href="{{  route('admin.discount.code.delete', $discount->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $discountCodes->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
