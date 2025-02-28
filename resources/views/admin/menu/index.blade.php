@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.menu.index') }}">Danh mục bài viết</a></li>
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
                                    <a href="{{ route('admin.menu.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="align-middle text-center" style="width: 10px">STT</th>
                                 
                                    <th class ="align-middle text-center">Tên danh mục</th>
                                    <th class ="align-middle text-center">Ảnh</th>
                                    <th class ="align-middle text-center">Trạng thái</th>
                                    <th class ="align-middle text-center">Hot</th>
                                    <th class ="align-middle text-center">Thời gian</th>
                                    <th class ="align-middle text-center">Hành động</th>
                                </tr>
                                @if ($menus)
                                    @foreach($menus as $key => $menu)
                                        <tr>
                                            <td class ="align-middle text-center">{{ ($key + 1)}}</td>
                                         
                                            <td class ="align-middle text-center">{{ $menu->mn_name }}</td>
                                            <td class ="align-middle text-center">
                                                @if(isset($menu) && !empty($menu->mn_avatar))
                                                <img src="{{ asset(pare_url_file($menu->mn_avatar)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 80px; width:80%;">
                                                @else
                                                <img src="{{ asset('admin/dist/img/no-image.png') }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 80px; width:80%;">
                                                @endif
                                            </td>
                                            <td class ="align-middle text-center">
                                                @if ($menu->mn_status == 1)
                                                    <a href="{{ route('admin.menu.active', $menu->id) }}" class="btn-sm btn-info">Show</a>
                                                @else 
                                                    <a href="{{ route('admin.menu.active', $menu->id) }}" class="btn-sm btn-default">Hide</a>
                                                @endif
                                            </td>
                                            <td class ="align-middle text-center">
                                                @if ($menu->mn_hot == 1)
                                                    <a href="{{ route('admin.menu.hot', $menu->id) }}" class="btn-sm btn-info">Hot</a>
                                                @else 
                                                    <a href="{{ route('admin.menu.hot', $menu->id) }}" class="btn-sm btn-default">None</a>
                                                @endif
                                            </td>
                                            <td class ="align-middle text-center">{{  $menu->created_at }}</td>
                                            <td class ="align-middle text-center">
                                                <a href="{{ route('admin.menu.update', $menu->id) }}" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i>&nbsp;Sửa</a>
                                                <a href="{{  route('admin.menu.delete', $menu->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
