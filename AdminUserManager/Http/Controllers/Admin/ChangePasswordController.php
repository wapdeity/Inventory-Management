<?php

namespace Modules\AdminUserManager\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use App\User;
use Modules\AdminUserManager\Http\Requests\AdminRequest;

class ChangePasswordController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Response
     */

    public function __construct() { 
        $this->middleware('preventBackHistory'); 
        $this->middleware('auth');
    
    }
    public function index()
    {
        
        $password = User::find(\Auth::user()->id);
        return view('adminusermanager::admin.changepassword.index',compact('password'));
    }

    /**
     * Show the form for creating a new resource.
     * @return Response
     */
    public function create()
    {
        return view('adminusermanager::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Response
     */
    public function show($id)
    {
        return view('adminusermanager::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Response
     */
    public function edit($id)
    {
        return view('adminusermanager::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Response
     */
    public function update(AdminRequest $adminRequest, $id)
    {
        $user = User::find(\Auth::user()->id);
        if($adminRequest->input('new_password')==$adminRequest->input('confirm_password'))
        {
            $data = array();
            $password = bcrypt($adminRequest->input('confirm_password'));
            $data['password'] = $password;
            $user->update($data);
            return redirect()->route('admin.changepassword.index')->with('message', 'Password has been updated successfully');
        }
        
        
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }
}
