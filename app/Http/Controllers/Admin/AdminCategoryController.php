<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\AdminRequestCategory;
use Illuminate\Support\Str;
use Carbon\Carbon;
use App\Models\Category;

class AdminCategoryController extends AdminController
{
    public function index()
    {
        $categories = Category::paginate(10);

        $viewData = [
            'categories' => $categories,
            'title_page' => 'Danh mục sản phẩm',
        ];

        return view('admin.category.index', $viewData);
    }

    public function create()
    {
        $categories = $this->getCategoriesSort();
        $viewData = [
            // 'categories' => $categories,
            'title_page' => 'tạo Danh mục sản phẩm',
        ];
        return view('admin.category.create',compact('categories'), $viewData);
    }

    public function store(AdminRequestCategory $request)
    {
        $data               = $request->except('_token','c_avatar');
        $data['c_slug']     = Str::slug($request->c_name);
        $data['created_at'] = Carbon::now();
        if ($request->c_avatar) {
            $image = upload_image('c_avatar');
            if ($image['code'] == 1)
                $data['c_avatar'] = $image['name'];
        }

        $id = Category::insertGetId($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function edit($id)
    {
        $category = Category::find($id);
        $categories = $this->getCategoriesSort();
        $viewData = [
            // 'categories' => $categories,
            'title_page' => 'chỉnh sửa Danh mục sản phẩm',
        ];
        return view('admin.category.update', compact('category','categories'), $viewData);
    }

    public function update(AdminRequestCategory $request, $id)
    {
        $category           = Category::find($id);
        $data               = $request->except('_token','c_avatar');
        $data['c_slug']     = Str::slug($request->c_name);
        $data['updated_at'] = Carbon::now();

        if ($request->c_avatar) {
            $image = upload_image('c_avatar');
            if ($image['code'] == 1)
                $data['c_avatar'] = $image['name'];
        }

        $category->update($data);
        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function active($id)
    {
        $category = Category::find($id);
        $category->c_status = ! $category->c_status;
        $category->save();

        return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
    }

    public function hot($id)
    {
        $category = Category::find($id);
        $category->c_hot = ! $category->c_hot;
        $category->save();

        return redirect()->back()->with('success', 'Cập nhật dữ liệu thành công');
    }

    public function delete($id)
    {
        $category = Category::find($id);
        if ($category) $category->delete();

        return redirect()->back()->with('success', 'Xóa thành công');
    }

    protected function getCategoriesSort()
    {
        $categories = Category::where('c_status', Category::STATUS_ACTIVE)
            ->select('id', 'c_parent_id', 'c_name')->get();

        $listCategoriesSort = [];
        Category::recursive($categories, $parent = 0, $level = 1, $listCategoriesSort);
        return $listCategoriesSort;
    }
}
