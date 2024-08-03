<div id="footer" >
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Bài viết</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Sản phẩm</a>
                        </li>
                        <!-- <li>
                            <a href="{{ route('get.register') }}">Đăng ký</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Đăng nhập</a>
                        </li> -->
                        <!-- Check điều kiện để ẩn đi khi đã có người dùng đăng ký đã có tài khoản rồi -->
                        @if (!isLoggedIn())
                        <li>
                            <a href="{{ route('get.register') }}">Đăng ký</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Đăng nhập</a>
                        </li>
                        @endif
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Tin tức</div>
                    <ul>
                        @if (isset($menus))
                            @foreach($menus as $menu)
                                <li>
                                    <a title="{{ $menu->mn_name }}"
                                        href="{{ route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id) }}">
                                        {{ $menu->mn_name }}
                                    </a>
                                </li>
                            @endforeach
                        @endif
                        <li><a href="{{ route('get.contact') }}">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Chính sách</div>
                    <ul>
                        <li><a href="{{ route('get.static.shopping_guide') }}">Hướng dẫn mua hàng</a></li>
                        <li><a href="{{  route('get.static.return_policy') }}">Chính sách đổi trả</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Danh mục nổi bật</div>
                    @if (isset($categoriesHot))
                        <ul>
                            @foreach($categoriesHot as $item)
                                <li>
                                    <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}" title="{{ $item->c_name }}">{{ $item->c_name }}</a>
                                </li>
                            @endforeach
                        </ul>
                    @endif
                </div>
            </div>
            <div class="bot">
                <div class="social">
                    <div class="title">KẾT NỐI VỚI CHÚNG TÔI</div>
                    <p>
                        <a href="" class="fa fa fa-youtube" target="_blank"></a>
                        <a href="" class="fa fa-facebook-official" target="_blank"></a>
                        <a href="https://www.linkedin.com/in/anhnhwork" target="_blank" class="fa fa-linkedin"></a>
                        <a href="" class="fa fa-instagram" target="_blank"></a>
                        <a href="" class="fa fa-twitter" target="_blank"></a>
                    </p>
                </div>
            </div>

            <!-- footer copy right -->
            <div class="footer-bottom">
                <div class="copyright text-center" style="color: #ffff; margin-top: 20px;">
                    Copyright &copy; {{ date("d/m/Y") }} <a style="color: #fff" href="https://www.linkedin.com/in/anhnhwork" target="_blank">Nguyễn Hoàng Anh</a>. All rights reserved.
                </div>
            </div>
        </div>
    </div>
</div>

