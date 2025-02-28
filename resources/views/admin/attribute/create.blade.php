@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="{{ route('admin.attribute.index') }}">Quản lý thông tin</a></li>
                        <li class="breadcrumb-item active">Thêm mới</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form role="form" action="" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-9">
                        <div class="card card-primary">

                            <div class="card-body">
                                <div class="form-group {{ $errors->first('atb_name') ? 'has-error' : '' }}">
                                    <label for="name">Tên thông tin <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" name="atb_name" placeholder="Nhập tên thuộc tính ...">
                                    @if ($errors->first('atb_name'))
                                        <span class="text-danger">{{ $errors->first('atb_name') }}</span>
                                    @endif
                                </div>


                                <div class="form-group {{ $errors->first('atb_type') ? 'has-error' : '' }}">
                                    <label for="name">Nhóm thông tin <span class="text-danger">(*)</span></label>
                                    <select class="form-control" name="atb_type">
                                        @foreach ($attribute_type as $key => $type)
                                            <option value="{{ $key }}">{{ $type['name'] }}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->first('atb_type'))
                                        <span class="text-danger">{{ $errors->first('atb_type') }}</span>
                                    @endif
                                </div>


                                <div class="form-group  {{ $errors->first('atb_category_id') ? 'has-error' : '' }}">
                                    <label for="name">Danh mục <span class="text-danger">(*)</span></label>
                                    <select class="form-control" name="atb_category_id">
                                        @foreach ($categories as $item)
                                            <option value="1">{{ $item->c_name }}</option>
                                        @endforeach
                                    </select>
                                    @if ($errors->first('atb_category_id'))
                                        <span class="text-danger">{{ $errors->first('atb_category_id') }}</span>
                                    @endif
                                </div>


                            
                                    <div class="text-center">
                                        <div class="card-header">
                                            <button type="submit" class="btn btn-success">Lưu dữ liệu <i
                                                    class="fa fa-save"></i></button>
                                            <button type="reset" value="reset" class="btn btn-danger">
                                                <i class="fa fa-undo"></i> Reset
                                            </button>
                                        </div>
                                    </div>
                              
                            </div>
                        </div>
                    </div>



                  
                </div>
        </div>
        </form>
    </section>
@stop
