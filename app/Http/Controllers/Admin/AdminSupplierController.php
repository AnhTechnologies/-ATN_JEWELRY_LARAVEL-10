<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestAccount;
use App\Models\Admin;
use App\Models\Supplier;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminSupplierController extends Controller
{
	public function index()
	{
		$supplieres = Supplier::get();
		$viewData = [
			'supplieres' => $supplieres,
			'title_page' => 'Danh sách nhà cung cấp',
		];
		return view('admin.supplier.index', $viewData);
	}

	public function create()
	{
		$viewData = [
			// 'supplieres' => $supplieres,
			'title_page' => 'tạo nhà cung cấp',
		];
		return view('admin.supplier.create', $viewData);
	}

	public function store(Request $request)
	{
		$data = $request->except("_token");
		$data['created_at'] = Carbon::now();
		$supplier = Supplier::insert($data);

		return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
	}

	public function edit($id)
	{
		$supplier = Supplier::find($id);
		$viewData = [
			// 'supplieres' => $supplieres,
			'title_page' => 'Cập nhật nhà cung cấp',
		];
		return view('admin.supplier.update', compact('supplier'), $viewData);
	}

	public function update(Request $request, $id)
	{
		$data = $request->except("_token");
		Supplier::find($id)->update($data);
		return redirect()->back()->with('success', 'Lưu dữ liệu thành công');
	}

	public function delete($id)
	{
		Supplier::find($id)->delete();
		return redirect()->back()->with('success', 'Xóa thành công');
	}
}
