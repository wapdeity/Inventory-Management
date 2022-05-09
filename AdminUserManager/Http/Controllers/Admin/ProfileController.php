<?php

namespace Modules\AdminUserManager\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller;
use Modules\AdminUserManager\Http\Requests\ProfileRequest;
use App\User;

class ProfileController extends Controller
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
         
        $profile = User::findOrFail(\Auth::user()->id);
        return view('adminusermanager::admin.profile.CreateorUpdate',compact('profile'));
    }

   

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Response
     */
    public function store(ProfileRequest $profileRequest)
    {
      // dd($profileRequest->all());
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
    public function update(ProfileRequest $profileRequest, $id)
    {
        $user = User::findOrFail($id);
        $user->update($profileRequest->all());
        return redirect()->route('admin.profiles.index')->with('message', 'Profile has been updated successfully');
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
