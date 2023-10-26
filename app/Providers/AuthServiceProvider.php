<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\User;
use App\Models\Permission;
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


        $permissions = Permission::all();
        foreach($permissions as $permission){
            Gate::define($permission->slug, function(User $user) use ($permission) {
                return $user->hasPermission($permission->slug);
            });
        }
        // Gate::define('product.add', function(User $user){
        //     return $user->hasPermission('product.add');
        // });
        //
    }
}
