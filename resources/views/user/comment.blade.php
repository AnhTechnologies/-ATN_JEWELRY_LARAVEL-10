@extends('layouts.app_master_user')
@section('css')
    <style>
        <?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title" style ="text-transform:capitalize; font-weight: bold;">Danh sách bình luận của bạn</div>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" style="text-align: center; vertical-align: middle; width: 50px">STT</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">Tên sản phẩm</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">Nội dung</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">Thời gian</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">Hành động</th>
                    </tr>
                    </thead>

                    @if (isset($comments))
                    <tbody>
                        @foreach($comments as $key => $comment)
                            <tr>
                                <td style="text-align: center; vertical-align: middle;">{{ (($comments->currentPage() - 1) * $comments->perPage()) + ( $key + 1)  }}</td>
                                <td style="width: 30%; text-align: center; vertical-align: middle;">{{ $comment->product->pro_name ?? "[N\A]" }}</td>
                                
                                <td style="text-align: center; vertical-align: middle;">{{ $comment->cmt_content }}</td>
                                <td style="text-align: center; vertical-align: middle;">{{ $comment->created_at }}</td>
                                <td style="text-align: center; vertical-align: middle;">
                                    <a href="{{  route('get.user.comment.delete', $comment->id) }}" class="btn btn-xs label-danger js-delete-confirm"><i class="fa fa-trash"></i>&nbsp;&nbsp;Xoá</a>
                                </td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
        <div style="display: block;">
            {!! $comments->appends($query ?? [])->links() !!}
        </div>
    </section>
@stop

@section('script')
    
@stop
