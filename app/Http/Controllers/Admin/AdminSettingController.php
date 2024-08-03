<?php


namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;

class AdminSettingController extends Controller
{
	public function index()
	{
		$viewData = [
			'title_page' => 'Setting',
		];
		return view('admin.setting.index', $viewData);
	}
}