@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.attribute.index') }}">Quản lý thông tin</a></li>
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
                                    <a href="{{ route('admin.attribute.create') }}"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="align-middle text-center" style="width: 10px">STT</th>
                                  
                                    <th class ="align-middle text-center">Tên thuộc tính</th>
                                    <th class ="align-middle text-center">Loại</th>
                                    <th class ="align-middle text-center">Danh mục sản phẩm</th>
                                    <th class ="align-middle text-center">Thời gian</th>
                                    <th class ="align-middle text-center">Hành động</th>
                                </tr>
                                @if (isset($attibutes))
                                    @foreach($attibutes as $key => $attribute)
                                        <tr>
                                            <td class ="align-middle text-center">{{ ($key + 1 ) }}</td>
                                          
                                            <td class ="align-middle text-center">{{ $attribute->atb_name }}</td>
                                            <td class ="align-middle text-center">
                                                <span class="{{ $attribute->getType($attribute->atb_type)['class'] }}" 
                                                >{{ $attribute->getType($attribute->atb_type)['name'] }}</span>
                                            </td>
                                            <td class ="align-middle text-center">
                                                <span class="btn-sm btn-info">{{ $attribute->category->c_name ?? "[N\A]" }}</span>
                                            </td>
                                            <td class ="align-middle text-center">{{  $attribute->created_at }}</td>
                                            <td class ="align-middle text-center">
                                                <a href="{{ route('admin.attribute.update', $attribute->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-pencil-alt"></i>&nbsp;Sửa</a>
                                                <a href="{{  route('admin.attribute.delete', $attribute->id) }}" class="btn btn-danger btn-sm btn-delete btn-confirm-delete"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
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