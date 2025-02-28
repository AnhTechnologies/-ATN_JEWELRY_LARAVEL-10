<?php
return [
    [
        'name' => 'Sản Phẩm',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fa fa-database',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Thuộc Tính',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fas fa-magic',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Danh Mục Sản Phẩm',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fas fa-layer-group',
				'level'  => [1,2],
            ],
//            [
//                'name'  => 'Từ khoá',
//                'namespace' => 'keyword',
//                'route' => 'admin.keyword.index',
//                'icon'  => 'fa fa-key',
//				'level'  => [1,2],
//            ],
            [
                'name'  => 'Sản Phẩm',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Đánh Giá',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Bình Luận',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'nav-icon fas fa-comments',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Mã Giảm Giá',
                'namespace' => 'discount-code',
                'route' => 'admin.discount.code.index',
                'icon'  => 'fas fa-gift',
                'level'  => [1,2],
            ],
        ]
    ],
    [
        'name' => 'Tin Tức',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-newspaper',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Danh Mục Bài Viết',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fas fa-stream',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Bài Viết',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'far fa-newspaper',
				'level'  => [1,2],
            ],
        ]
    ],
	[
		'name' => 'Đối Tác',
		'list-check' => ['user','ncc'],
		'icon' => 'far fa-handshake',
		'level'  => [1,2],
		'sub'  => [
			
			[
				'name'  => 'Nhà Cung Cấp',
				'route' => 'admin.ncc.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-users',
				'level'  => [1,2],
			],
            [
               'name'  => 'Liên Hệ',
               'namespace' => 'contact',
               'route' => 'admin.contact',
               'icon'  => 'fas fa-envelope-open-text',
               'level'  => [1,2],
           ],
		]
	],
   [
       'name' => 'Khách Hàng',
       'list-check' => ['user','rating','comment','contact'],
       'icon' => 'fas fa-users',
       'level'  => [1,2],
       'sub'  => [
           [
               'name'  => 'Khách Hàng',
               'route' => 'admin.user.index',
               'namespace' => 'user',
               'icon'  => 'fas fa-users',
               'level'  => [1,2],
           ],
        //    [
        //        'name'  => 'Comment',
        //        'namespace' => 'comment',
        //        'route' => 'admin.comment.index',
        //        'icon'  => 'fa fa-star',
        //        'level'  => [1,2],
        //    ],

       ]
   ],
    [
        'name' => 'Đơn Hàng',
        'list-check' => ['transaction'],
        'icon' => 'fas fa-file-invoice-dollar',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Danh Sách Đơn Hàng',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fas fa-receipt',
				'level'  => [1,2],
            ]
        ]
    ],
	[
        'name' => 'Kho',
        'list-check' => ['inventory','import','export'],
        'icon' => 'fas fa-warehouse',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Nhập Kho',
                'namespace' => 'import',
                'route' => 'admin.inventory.warehousing',
                'icon'  => 'fas fa-dolly-flatbed',
				'level'  => [1,2],
            ],
			[
				'name'  => 'Xuất Kho',
				'namespace' => 'export',
				'route' => 'admin.export.out_of_stock',
				'icon'  => 'fas fa-truck-loading',
				'level'  => [1,2],
			],
        ]
    ],
//    [
//        'name' => 'SystemPay',
//        'list-check' => ['pay-in'],
//        'icon' => 'fa  fa-usd',
//        'sub'  => [
//            [
//                'name'  => 'Nạp tiền',
//                'route' => 'admin.system_pay_in.index',
//                'namespace' => 'pay-in',
//                'icon'  => 'fa fa-money'
//            ]
//        ]
//    ],

	[
		'name' => 'Hệ Thống',
		'list-check' => ['slide','account_admin','event','page-static','statistical'],
		'icon' => 'fas fa-cogs',
		'level'  => [1],
		'sub'  => [
			[
				'name'  => 'Tài Khoản',
				'route' => 'admin.account_admin.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fas fa-user-circle'
			],
			[
				'name'  => 'Slide',
				'route' => 'admin.slide.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fas fa-images'
			],
			[
				'name'  => 'Sự kiện',
				'route' => 'admin.event.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fas fa-film'
			],
            [
				'name'  => 'Chính Sách',
				'route' => 'admin.static.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-file'
			],
			[
				'name'  => 'Thống Kê',
				'route' => 'admin.statistical',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fas fa-chart-pie'
			],
		]
	],
];
