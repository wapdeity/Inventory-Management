<?php

namespace App\Http\Controllers\Admin\Auth;

use App\Http\Controllers\Admin\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/admin/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
          
        return view('admin.auth.login');
    }

    public function login(Request $request)
    {
         
        $input = $request->all();
      
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required',
        ]);
         
        $credentials = $request->only('email', 'password','role_id');
        
        if (Auth::attempt($credentials,null)) {
             
            return redirect()->route('admin.dashboard.index');
        } else {
            return redirect()->route('admin.login')
                ->withErrors('Email And Password Are Wrong.');
        }
        return redirect()->back()->with(['errors' => 'invalid username or password']);
    }

    public function logout(Request $request) 
    {
        

        // Auth::guard('admin')->logout();
        $request->session()->flush();
        $request->session()->regenerate();
        return redirect()->guest(route( 'admin.login' ))->withErrors('Logout Successfully.');
    }
     
}
