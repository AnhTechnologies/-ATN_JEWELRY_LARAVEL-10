<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AdminRequestMenu;
use App\Models\Menu;
use Carbon\Carbon;
use Illuminate\Support\Str;

class AdminMenuController extends Controller
{
    public function index()
    {
        $menus = Menu::all();
        $viewData = [
            'menus' => $menus,
            'title_page' => 'Danh sách bài viết',
        ];

        return view('admin.menu.index', $viewData);
    }

    public function create()
    {
        $viewData = [
            // 'menus' => $menus,
            'title_page' => 'tạo Danh sách bài viết',
        ];
        return view('admin.menu.create', $viewData);   
    }

    public function store(AdminRequestMenu $request)
    {
        $data               = $request->except('_token');
        $data['mn_slug']     = Str::slug($request->mn_name);
        $data['created_at'] = Carbon::now();

        $id = Menu::insertGetId($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function edit($id)
    {
        $menu = Menu::find($id);
        $viewData = [
            // 'menus' => $menus,
            'title_page' => 'chỉnh sửa Danh sách bài viết',
        ];
        return view('admin.menu.update', compact('menu'), $viewData);
    }

    public function update(AdminRequestMenu $request, $id)
    {
        $menu               = Menu::find($id);
        $data               = $request->except('_token');
        $data['mn_slug']     = Str::slug($request->mn_name);
        $data['updated_at'] = Carbon::now(); 

        $menu->update($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function active($id)
    {
        $menu               = Menu::find($id);
        $menu->mn_status = ! $menu->mn_status;
        $menu->save();

        return redirect()->back();
    }

    public function hot($id)
    {
        $menu               = Menu::find($id);
        $menu->mn_hot = ! $menu->mn_hot;
        $menu->save();

        return redirect()->back();
    }

    public function delete($id)
    {
        $menu = Menu::find($id);
        if ($menu) $menu->delete();

        return redirect()->back()->with('success', 'Xóa thành công');
    }
}
