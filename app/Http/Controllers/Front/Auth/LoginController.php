<?php

namespace App\Http\Controllers\Front\Auth;

use App\Http\Controllers\Front\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use App\User;
use Auth;
use Carbon\Carbon;

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
    protected $redirectTo = RouteServiceProvider::HOME;

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
        
        return view('front.auth.login');
    }

    public function login(Request $request)
    {   
        
        $input = $request->all();
       
        $credentials = $request->except(['_token']);
        $user = User::where('email',$request->email)->where('role_id','1')->first();
      
        if(isset($user))
        {
             
            if($user->email_verified == 1) {
                 
                if (Auth::guard('web')->attempt($credentials,null)) {
                    return redirect()->route('home');
                }
            } else {

                return redirect()->route('login')
                    ->withErrors('Please activate your account');
            }
        } else {
            return redirect()->route('login')
                ->withErrors('Email-Address And Password Are Wrong.');
        } 
    }

    
}
