@extends('layouts.app_master_admin')
@section('content')
<style>
   
</style>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-left">
                            <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang
                                    chủ</a></li>
                            <li class="breadcrumb-item"><a href="{{ route('admin.article.index') }}">Bài viết</a></li>
                            <li class="breadcrumb-item active">Danh sách</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </div>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-tools">
                                <div class="btn-group">
                                    <a href="{{ route('admin.article.create') }}"><button type="button"
                                            class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo
                                            mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                    <tr>
                                        <th class ="align-middle text-center" style="width: 10px">STT</th>
                                        <th class ="align-middle text-center">Tên bài viết</th>
                                        <th class ="align-middle text-center">Danh mục bài viết</th>
                                        <th class ="align-middle text-center">Hình ảnh</th>
                                        <th class ="align-middle text-center">Nổi bật</th>
                                        <th class ="align-middle text-center">Trạng thái</th>
                                        <th class ="align-middle text-center">Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if (isset($articles))
                                        @foreach ($articles as $key => $article)
                                            <tr>
                                                <td class ="align-middle text-center">{{ ($articles->currentPage() - 1) * $articles->perPage() + ($key + 1) }}
                                                </td>

                                                <td class ="align-middle" style="width: 20%" class="title-content"><p>{{ $article->a_name }}</p></td>
                                                <td class ="align-middle text-center">
                                                    <span
                                                        class="label label-success">{{ $article->menu->mn_name ?? '[N\A]' }}
                                                    </span>
                                                </td>
                                                <td class ="align-middle text-center">
                                                    <img src="{{ pare_url_file($article->a_avatar) }}"
                                                        style="width: 80px;height: 80px">
                                                </td>

                                                <td class ="align-middle text-center">
                                                    @if ($article->a_hot == 1)
                                                        <a href="{{ route('admin.article.hot', $article->id) }}"
                                                            class="btn-xs btn-info">Nổi bật</a>
                                                    @else
                                                        <a href="{{ route('admin.article.hot', $article->id) }}"
                                                            class="btn-xs btn-danger">Không</a>
                                                    @endif
                                                </td>
                                                <td class ="align-middle text-center">
                                                    @if ($article->a_active == 1)
                                                        <a href="{{ route('admin.article.active', $article->id) }}"
                                                            class="btn-xs btn-info">Hiển thị</a>
                                                    @else
                                                        <a href="{{ route('admin.article.active', $article->id) }}"
                                                            class="btn-xs btn-secondary">Ẩn</a>
                                                    @endif
                                                </td>

                                                <td class ="align-middle text-center">
                                                    <a href="{{ route('admin.article.update', $article->id) }}"
                                                        class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i>&nbsp;Sửa</a>
                                                    <a href="{{ route('admin.article.delete', $article->id) }}"
                                                        class="btn btn-sm btn-danger js-delete-confirm"><i
                                                            class="fa fa-trash"></i>&nbsp;Xoá</a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>

                            <div class="pagination float-right margin-20">
                                {!! $articles->links() !!}
                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
    </section>
@stop
