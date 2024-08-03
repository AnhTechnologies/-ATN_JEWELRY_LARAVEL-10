<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Http\Requests\AdminRequestKeyword;
use App\Models\Keyword;
use Carbon\Carbon;

class AdminKeywordController extends Controller
{
    public function index()
    {
        $keywords = Keyword::paginate(10);

        $viewData = [
            'keywords' => $keywords,
            'title_page' => 'Keyword',
        ];

        return view('admin.keyword.index', $viewData);
    }

    public function create()
    {
        $viewData = [
            // 'keywords' => $keywords,
            'title_page' => 'tạo Keyword',
        ];
        return view('admin.keyword.create', $viewData);   
    }

    public function store(AdminRequestKeyword $request)
    {
        $data               = $request->except('_token');
        $data['k_slug']     = Str::slug($request->k_name);
        $data['created_at'] = Carbon::now();

        $id = Keyword::insertGetId($data);

        return redirect()->back();
    }

    public function edit($id)
    {
        $keyword = Keyword::find($id);
        $viewData = [
            // 'keywords' => $keywords,
            'title_page' => 'chỉnh sửa Keyword',
        ];
        return view('admin.keyword.update', compact('keyword'), $viewData);
    }

    public function update(AdminRequestKeyword $request, $id)
    {
        $keyword            = Keyword::find($id);
        $data               = $request->except('_token');
        $data['k_slug']     = Str::slug($request->k_name);
        $data['updated_at'] = Carbon::now(); 
        
        $keyword->update($data);
        return redirect()->back();
    }

    public function hot($id)
    {
        $keyword = Keyword::find($id);
        $keyword->k_hot = ! $keyword->l_hot;
        $keyword->save();

        return redirect()->back();
    }

    public function delete($id)
    {
        $keyword = Keyword::find($id);
        if ($keyword) $keyword->delete();

        return redirect()->back();
    }
}
