<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TrackOrderController extends Controller
{
    public function index()
    {
        $viewData = [
            'title_page'    => "Theo dõi đơn hàng",
        ];
        return view('frontend.pages.shopping.track.index', $viewData);
    }
}
