@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.static.index') }}">Quản lý chính sách</a></li>
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
                                    <a href="{{ route('admin.static.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="text-center align-middle" style="width: 10px">STT</th>
                                    <th class ="text-center align-middle">Tên chính sách</th>
                                    <th class ="text-center align-middle">Loại chính sách</th>
                                    <th class ="text-center align-middle">Thời gian</th>
                                    <th class ="text-center align-middle">Hành động</th>
                                </tr>
                                @if (isset($statics))
                                    @foreach($statics as $key => $static)
                                        <tr>
                                            <td class ="text-center align-middle">{{ ($key + 1) }}</td>
                                            <td class ="text-center align-middle">{{ $static->s_title }}</td>
                                            <td class ="text-center align-middle">{{ $static->getType($static->s_type) }}</td>
                                            <td class ="text-center align-middle">{{  $static->created_at }}</td>
                                            <td class ="text-center align-middle">
                                                <a href="{{ route('admin.static.update', $static->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i>&nbsp;Sửa</a>
                                                <a href="{{  route('admin.static.delete', $static->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
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
                    {{-- {!! $slides->links() !!} --}}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop