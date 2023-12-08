<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\user;
use App\Models\permission;
class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();


        $permissions = permission::all();
        foreach($permissions as $permission){
            Gate::define($permission->slug, function(user $user) use ($permission) {
                return $user->hasPermission($permission->slug);
            });
        }
        // Gate::define('product.add', function(User $user){
        //     return $user->hasPermission('product.add');
        // });
        //
    }
}
