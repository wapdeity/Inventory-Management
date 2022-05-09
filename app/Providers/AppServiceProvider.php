<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\User;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
         
        View::composer('admin.partials.sidebar',function($view) {
            if(isset(\Auth::user()->id)) {
                $view->with('profile', User::where('role_id',\Auth::user()->id)->get()->first());
            }
            
        });
    }
}
