@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Cập nhật bài viết</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home&nbsp;&nbsp;/</a></li>
            <li><a href="{{  route('admin.article.index') }}">&nbsp;&nbsp;Bài viết&nbsp;&nbsp;/</a></li>
            <li class="active">&nbsp;&nbsp;Cập nhật bài viết</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    <div class="row">
        @include('admin.article.form')
    </div>
</section>
    <!-- /.content -->
@stop