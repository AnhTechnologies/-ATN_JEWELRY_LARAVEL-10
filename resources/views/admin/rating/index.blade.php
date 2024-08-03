@extends('layouts.app_master_admin')
@section('content')
<style type="text/css">
    .ratings span i {
        color: #eff0f5;
    }
    .ratings span.active i {
        color: #faca51;
    }
</style>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.rating.index') }}">Danh sách đánh giá</a></li>
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
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th class ="align-middle text-center" style="width: 10px">STT</th>
                                    <th class ="align-middle text-center">Tên</th>
                                    <th class ="align-middle text-center">Khách hàng</th>
                                    <th class ="align-middle text-center">Xếp hạng</th>
                                    <th class ="align-middle text-center">Thời gian</th>
                                    <th class ="align-middle text-center">Hành động</th>
                                </tr>
                                @if (isset($ratings))
                                    @foreach($ratings as $key => $rating)
                                        <tr>
                                            <td class ="align-middle text-center">{{ (($ratings->currentPage() - 1) * $ratings->perPage()) + ( $key + 1)  }}</td>
                                            <td class ="align-middle text-center">{{ $rating->product->pro_name ?? "[N\A]" }}</td>
                                            <td class ="align-middle text-center">{{ $rating->user->name ?? "[N\A]" }}</td>
                                            <td class ="align-middle text-center">
                                                <div class="ratings">
                                                    @for($i = 1 ; $i <= 5 ; $i ++)
                                                        <span class="{{  $i <= $rating->r_number ? 'active' : '' }}"><i class="fa fa-star"></i></span>
                                                    @endfor
                                                </div>
                                            </td>
                                            <td class ="align-middle text-center">{{ $rating->created_at }}</td>
                                            <td class ="align-middle text-center">
                                                <a href="{{  route('admin.rating.delete', $rating->id) }}" class="btn btn-danger btn-sm btn-delete btn-confirm-delete"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
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
                    {!! $ratings->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop