@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.slide.index') }}">Quản lý slide</a></li>
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
                                    <a href="{{ route('admin.slide.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="text-center align-middle" style="width: 10px">STT</th>
                                    <th class ="text-center align-middle">Tên</th>
                                    <th class ="text-center align-middle">Trạng thái</th>
                                    <th class ="text-center align-middle">Sort</th>
                                    <th class ="text-center align-middle">Target</th>
                                    <th class ="text-center align-middle">Thời gian</th>
                                    <th class ="text-center align-middle">Hành động</th>
                                </tr>
                                @if (isset($slides))
                                    @foreach($slides as $key => $slide)
                                        <tr>
                                            <td class ="text-center align-middle">{{ ($key + 1) }}</td>
                                            <td class ="text-center align-middle">{{ $slide->sd_title }}</td>
                                            <td class ="text-center align-middle">
                                                @if ($slide->sd_active == 1)
                                                    <a href="{{ route('admin.slide.active', $slide->id) }}" class="btn-sm btn-info"><i class="fa fa-eye"></i>&nbsp;Hiện</a>
                                                @else 
                                                    <a href="{{ route('admin.slide.active', $slide->id) }}" class="btn-sm btn-default"><i class="fa fa-eye-slash"></i>&nbsp;Ẩn</a>
                                                @endif
                                            </td>
                                            <td class ="text-center align-middle">{{  $slide->sd_sort }}</td>
                                            <td class ="text-center align-middle">{{  $slide->sd_target }}</td>
                                            <td class ="text-center align-middle">{{  $slide->created_at }}</td>
                                            <td class ="text-center align-middle">
                                                <a href="{{ route('admin.slide.update', $slide->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i>&nbsp;Sửa</a>
                                                <a href="{{  route('admin.slide.delete', $slide->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
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