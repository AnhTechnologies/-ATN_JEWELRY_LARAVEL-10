@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.category.index') }}">Danh mục</a></li>
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
                                    <a href="{{ route('admin.category.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
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
                                    <th class ="align-middle text-center">Hình ảnh</th>
                                    <th class ="align-middle text-center">Trạng thái</th>
                                    <th class ="align-middle text-center">Nổi bật</th>
                                    <th class ="align-middle text-center">Thời gian</th>
                                    <th class ="align-middle text-center">Hành động</th>
                                </tr>
                                @if ($categories)
                                    @foreach($categories as $key => $category)
                                        <tr>
                                            <td class ="align-middle text-center">{{ (($categories->currentPage() - 1) * $categories->perPage()) + ( $key + 1)  }}</td>
                                            <td class ="align-middle text-center">{{ $category->c_name }}</td>
                                            <td class ="align-middle text-center">
                                                @if(isset($category) && !empty($category->c_avatar))
                                                <img src="{{ asset(pare_url_file($category->c_avatar)) }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 80px; width:80%;">
                                                @else
                                                <img src="{{ asset('admin/dist/img/no-image.png') }}" alt="" class="margin-auto-div img-rounded"  id="image_render" style="height: 80px; width:80%;">
                                                @endif
                                            </td>
                                            <td class ="align-middle text-center">
                                                @if ($category->c_status == 1)
                                                    <a href="{{ route('admin.category.active', $category->id) }}" class="btn-sm btn-success"><i class="fa fa-eye"></i>&nbsp;Hiện</a>
                                                @else
                                                    <a href="{{ route('admin.category.active', $category->id) }}" class="btn-sm btn-warning"><i class="fa fa-eye-slash"></i>&nbsp;Ẩn</a>
                                                @endif
                                            </td>
                                            <td class ="align-middle text-center">
                                                @if ($category->c_hot == 1)
                                                    <a href="{{ route('admin.category.hot', $category->id) }}" class="btn-sm btn-info">Có</a>
                                                @else
                                                    <a href="{{ route('admin.category.hot', $category->id) }}" class="btn-sm btn-secondary">Không</a>
                                                @endif
                                            </td>
                                            <td class ="align-middle text-center">{{  $category->created_at }}</td>
                                            <td class ="align-middle text-center">
                                                <a href="{{ route('admin.category.update', $category->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-pencil-alt"></i></i>&nbsp;Sửa</a>
                                                <a href="{{  route('admin.category.delete', $category->id) }}" class="btn btn-danger btn-sm btn-delete btn-confirm-delete"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
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
                    {!! $categories->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
