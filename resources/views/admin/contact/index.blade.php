@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="#">Liên hệ</a></li>
                    
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
                       
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="text-center align-middle" style="width: 10px">STT</th>
                                    <th class ="text-center align-middle">ID</th>
                                    <th class ="text-center align-middle">Tiêu đề</th>
                                    <th class ="text-center align-middle">Email</th>
                                    <th class ="text-center align-middle">Điện thoại</th>
                                    <th class ="text-center align-middle">Nội dung</th>
                                    <th class ="text-center align-middle">Ngày gửi</th>
                                    <th class ="text-center align-middle">Hành động</th>
                                </tr>
                                @if (isset($contacts))
                                    @foreach($contacts as $key => $item)
                                        <tr>
                                            <td class ="text-center align-middle">{{ (($contacts->currentPage() - 1) * $contacts->perPage()) + ( $key + 1)  }}</td>
                                            <td class ="text-center align-middle">{{ $item->id }}</td>
                                            <td class ="text-center align-middle">{{ $item->c_title }}</td>
                                            <td class ="text-center align-middle">{{ $item->c_email }}</td>
                                            <td class ="text-center align-middle">{{ $item->c_phone }}</td>
                                            <td class ="text-center align-middle">{{ $item->c_content }}</td>
                                            <td class ="text-center align-middle">{{ $item->created_at }}</td>
                                            <td class ="text-center align-middle">
                                                <a href="{{  route('admin.contact.delete', $item->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
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
                    {!! $contacts->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
