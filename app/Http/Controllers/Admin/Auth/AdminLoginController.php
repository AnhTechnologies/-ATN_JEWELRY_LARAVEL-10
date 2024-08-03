<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class AdminLoginController extends Controller
{
    use AuthenticatesUsers;

    public function getLoginAdmin()
    {
        $viewData = [
            'title_page' => "Admin login"
        ];
        return view('admin.auth.login', $viewData);
    }

    public function postLoginAdmin(Request $request)
    {
        if (\Auth::guard('admins')->attempt(['email' => $request->email, 'password' => $request->password])) {
//            return redirect()->intended('/api-admin');
            return redirect()->route('admin.statistical');
        }

        return redirect()->back();
    }

    public function getLogoutAdmin()
    {
        \Auth::guard('admins')->logout();
        return redirect()->to('/');
    }
}
