<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <!-- Title dạng chữ thường -->
        <!-- <title>{{ strtolower($title_page ?? "Đồ án tốt nghiệp")   }}</title> -->
        <!-- Title dạng chữ in hoa -->
        <!-- <title>{{ strtolower($title_page ?? "Đồ án tốt nghiệp")   }}</title> -->
        <!-- Title dạng chữ in hoa chữ cái đầu -->
        <title>{{ ucwords($title_page ?? "Đồ án tốt nghiệp")  }} | Jewelry</title>  
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <!-- Favicon -->
        <link rel="icon" href="{{ asset('images/favicon.png') }}" type="image/png">
        <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('ico.png') }}" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="{!! asset('admin/plugins/toastr/toastr.min.css') !!}">
        @yield('css')

        {{-- Thông báo --}}
        @if(session('toastr'))
            <script>
                var TYPE_MESSAGE = "{{session('toastr.type')}}";
                var MESSAGE = "{{session('toastr.message')}}";
            </script>
        @endif
        <style>
            .main-title {
                color: red;
            }
            .product-item a h3 {
                font-size: 14px !important;
            }
        </style>
    </head>
    <body>
        @include('frontend.components.header')
        @yield('content')
        @include('frontend.components.footer')

        <script>
            var DEVICE = '{{  device_agent() }}'
        </script>
        @yield('script')
    </body>
</html>
