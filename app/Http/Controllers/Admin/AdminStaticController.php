<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\PageStatic;

class AdminStaticController extends Controller
{
    public function index()
    {
		if (!check_admin()) return redirect()->route('get.admin.index');
        $statics = PageStatic::get();
        $viewData = [
            'statics' => $statics,
            'title_page' => 'Quản lý chính sách',
        ];
        return view('admin.static.index', compact('statics'), $viewData);
    }

    public function create()
    {
        $type = (new PageStatic())->getType();
        $viewData = [
            // 'statics' => $statics,
            'title_page' => 'tạo chính sách',
        ];
        return view('admin.static.create',compact('type'), $viewData);
    }

    public function store(Request $request)
    {
        $data               = $request->except('_token');
        $data['created_at'] = Carbon::now();
       
        $id = PageStatic::insertGetId($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function edit(Request $request, $id)
    {
        $static = PageStatic::find($id);
        $type = (new PageStatic())->getType();
        $viewData = [
            // 'statics' => $statics,
            'title_page' => 'cập nhật chính sách',
        ];
        return view('admin.static.update', compact('static','type'), $viewData);
    }

    public function update(Request $request, $id)
    {
        $static = PageStatic::find($id);
        $data               = $request->except('_token');
        $data['created_at'] = Carbon::now();        

        $update = $static->update($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function delete(Request $request, $id)
    {
        $static = PageStatic::find($id);
        if ($static) $static->delete();

        return redirect()->back()->with('success', 'Xóa thành công');
    }
}
