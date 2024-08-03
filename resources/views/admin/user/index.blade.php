@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.user.index') }}">Người dùng</a></li>
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
                <div class="box-body">
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover text-nowrap table-bordered">
                            <thead>
                                <tr>
                                    <th class ="text-center align-middle" style="width: 10px">STT</th>
                                    <th class ="text-center align-middle" style="width: 10px">ID Khách hàng</th>
                                    <th class ="text-center align-middle">Tên khách hàng</th>
                                    <th class ="text-center align-middle">Email</th>
                                    <th class ="text-center align-middle">SĐT</th>
                                    <th class ="text-center align-middle">Thời gian</th>
                                    <th class ="text-center align-middle">Hành động</th>
                                </tr>
                                @if (isset($users))
                                    @foreach($users as $key => $user)
                                        <tr>
                                            <td class ="text-center align-middle">{{ ($key + 1) }}</td>
                                            <td class ="text-center align-middle">{{ $user->id }}</td>
                                            <td class ="text-center align-middle">{{ $user->name }}</td>
                                            <td class ="text-center align-middle">{{ $user->email }}</td>
                                            <td class ="text-center align-middle">{{ $user->phone }}</td>
                                            <td class ="text-center align-middle">{{ $user->created_at }}</td>
                                            <td class ="text-center align-middle">
                                                <a href="{{ route('admin.user.transaction', $user->id) }}" class="btn btn-sm btn-primary js-show-transaction">Nợ cần thu thanh toán khi nhận hàng</a>
                                                <a href="{{  route('admin.user.delete', $user->id) }}" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;Xoá</a>
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
                    {!! $users->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
    <div class="modal fade" id="modal-transaction" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button> -->
                    <button type="button" class="close ml-0" data-dismiss="modal" aria-label="Close">
                        <span class="btn btn-danger px-2 py-0" aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title font-weight-bold text-capitalize">Nợ cần thu từ khách hàng</h4>
                </div>
                <div class="modal-body" id="content-transaction">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Đóng</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
@stop

@section('script')
    <script>
        $(function () {
            $(".js-show-transaction").click(function (event) {
                event.preventDefault();
                let URL = $(this).attr('href');
                $.ajax({
                    url: URL,
                }).done(function( results ) {
                    $("#modal-transaction").modal({show: true});
                    $("#content-transaction").html(results.html)
                });
            })
            $("body").on("click","table .js-success-transaction", function(event){
                let URL = $(this).attr('href');
                let $this = $(this);
                event.preventDefault();
                $.ajax({
                    url: URL,
                }).done(function( results ) {
                    if (results.code)
                    {
                        $this.parents('tr').remove();
                    }
                });
            });
        })
    </script>
@stop