@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.ncc.index') }}">Nhà cung cấp</a></li>
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
                                    <a href="{{ route('admin.ncc.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="text-center align-middle" style="width: 10px">STT</th>                                
                                    <th class ="text-center align-middle">Tên nhà cung cấp</th>
                                    <th class ="text-center align-middle">Email</th>
                                    <th class ="text-center align-middle">SĐT</th>
                                    <th class ="text-center align-middle">Thời gian</th>
                                    <th class ="text-center align-middle">Hành động</th>
                                </tr>
                            </tbody>
                            @if (isset($supplieres))
                                    @foreach($supplieres as  $key => $item)
                                        <tr>
                                            <td class ="text-center align-middle">{{ ($key + 1) }}</td>                                       
                                            <td class ="text-center align-middle">{{ $item->sl_name }}</td>
                                            <td class ="text-center align-middle">{{ $item->sl_email }}</td>
                                            <td class ="text-center align-middle">{{ $item->sl_phone }}</td>
                                            <td class ="text-center align-middle">{{  $item->created_at }}</td>
                                            <td class ="text-center align-middle">
                                                <a href="{{ route('admin.ncc.update', $item->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i>&nbsp;Sửa</a>
                                                <a href="{{  route('admin.ncc.delete', $item->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
