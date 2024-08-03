@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Nhập Kho</a></li>
                        <!-- {{-- <li class="breadcrumb-item active">Danh sách</li> --}} -->
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
						   <a href="{{ route('admin.warehousing.add') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
					    </div>
					</div>
				 </div>
                {{-- <div class="box-body">
                    <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th class ="text-center align-middle">Ngày</th>
                                    <th class ="text-center align-middle">Số lượng</th>
                                    <th class ="text-center align-middle">Tổng tiền</th>
                                    <th class ="text-center align-middle">#</th>
                                </tr>

                            </tbody>
                            @if (isset($warehouses))
                                @foreach ($warehouses as $item)
                                    <tr>
                                        <td class ="text-center align-middle" style ="text-align: center">{{ $item->created_at }}</td>
                                        <td class ="text-center align-middle" style ="text-align: center">{{ $item->w_qty }}</td>
                                        <td class ="text-center align-middle" style ="text-align: center">{{ number_format($item->w_price, 0, ',', '.') }} VNĐ</td>
                                        <td class ="text-center align-middle" style ="text-align: center">
                                            <a href="{{ route('admin.warehousing.update', $item->id) }}"
                                                class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                            <a href="{{ route('admin.warehousing.delete', $item->id) }}"
                                                class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i>
                                                Delete</a>
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                        </table>
                    </div>
                </div> --}}
			 <div class="card-body table-responsive p-0">
				<table class="table table-hover text-nowrap table-bordered">
				    <thead>
					   <tr>
						  <th class="text-center align-middle">Ngày</th>
						  <th class="text-center align-middle">Số lượng</th>
						  <th class="text-center align-middle">Thành Tiền</th>
						  <th class="text-center align-middle">Hành động</th>
					   </tr>
				    </thead>
				    <tbody>
					@if (isset($warehouses))
					@foreach ($warehouses as $item)
							 <tr>
								
								<td class="text-center align-middle">{{ $item->created_at }}</td>
								<td class="text-center align-middle">{{ $item->w_qty }}</td>
								<td class="text-center align-middle">{{ number_format($item->w_price, 0, ',', '.') }}&nbsp;đ</td>
								<td class="text-center align-middle" class="text-center">
								    <a class="btn btn-primary btn-sm" href="{{ route('admin.warehousing.update', $item->id) }}">
									   <i class="fas fa-pencil-alt"></i>&nbsp;Sửa
								    </a>
								    <a class="btn btn-danger btn-sm btn-delete btn-confirm-delete" href="{{ route('admin.warehousing.delete', $item->id) }}">
									   <i class="fas fa-trash"></i>
                                       &nbsp;Xoá
								    </a>
								</td>
							 </tr>
							 @endforeach
							 @endif
				    </tbody>
				</table>
			
			 </div>
			
		  </div>
		 
	   </div>
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop
