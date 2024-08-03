<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;

class AdminContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::paginate(10);
        $viewData = [
            'contacts' => $contacts,
            'title_page' => "Danh sách bình luận",
        ];
        return view('admin.contact.index', $viewData);
    }

    public function delete($id)
    {
        Contact::find($id)->delete();
        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Xoá dữ liệu thành công'
        ]);
        return redirect()->back();
    }
}
