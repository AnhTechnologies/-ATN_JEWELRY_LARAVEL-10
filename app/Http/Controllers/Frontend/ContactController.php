<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index()
    {
        $viewData = [
            'title_page' => "Liên hệ",
        ];
        return view('frontend.pages.contact.index', $viewData);
    }

    public function store(Request $request)
    {
        $data               = $request->except('_token');
        $data['created_at'] = Carbon::now();

        Contact::insert($data);
        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Cảm ơn bạn. Chúng tối sẽ sớm liên hệ với bạn'
        ]);

        return redirect()->to('/');
    }
}
