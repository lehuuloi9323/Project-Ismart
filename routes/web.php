<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/admin',function(){
    return view('auth.login');
});



//guest
Route::get('/',[App\Http\Controllers\GuestController::class, 'index'])->name('index');






Auth::routes(['verify'=>'True']);



Route::middleware('verified', 'auth')->group(function(){

    // Route::get('dashboard', function(){
    //     return view('dashboard');
    // });


Route::get('admin/dashboard', [App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//POST
Route::get('admin/post/add', [App\Http\Controllers\PostController::class, 'add'])->name('post.add');
Route::get('admin/post/list', [App\Http\Controllers\PostController::class, 'list'])->name('post.list');
Route::get('admin/post/cat', [App\Http\Controllers\PostController::class, 'cat'])->name('post.cat');
//PAGE
Route::get('admin/page/add', [App\Http\Controllers\PageController::class, 'add'])->name('page.add');
Route::get('admin/page/list', [App\Http\Controllers\PageController::class, 'list'])->name('page.list');

//User
Route::get('admin/user/add', [App\Http\Controllers\UserController::class, 'add'])->name('user.add');
Route::post('admin/user/handle_add', [App\Http\Controllers\UserController::class, 'handle_add'])->name('user.handle_add');
Route::get('admin/user/edit/{id}', [App\Http\Controllers\UserController::class, 'edit'])->name('user.edit');
Route::post('admin/user/update/{id}', [App\Http\Controllers\UserController::class, 'update'])->name('user.update');
Route::get('admin/user/list', [App\Http\Controllers\UserController::class, 'list'])->name('user.list');
Route::get('admin/user/delete/{id}', [App\Http\Controllers\UserController::class, 'delete'])->name('user.delete');
Route::get('admin/user/action', [App\Http\Controllers\UserController::class, 'action'])->name('user.action');

//order
Route::get('admin/order/list', [App\Http\Controllers\OrderController::class, 'list'])->name('order.list');

//Product
Route::get('admin/product/add', [App\Http\Controllers\ProductController::class, 'add'])->name('product.add')->can('product.add');
Route::post('admin/product/storeadd', [App\Http\Controllers\ProductController::class, 'storeadd'])->name('product.storeadd')->can('product.add');
Route::get('admin/product/list', [App\Http\Controllers\ProductController::class, 'list'])->name('product.list');
Route::get('admin/product/cat', [App\Http\Controllers\ProductCategoryController::class, 'index'])->name('product.cat');
Route::post('admin/product/cat/add', [App\Http\Controllers\ProductCategoryController::class, 'add'])->name('product.cat.add');
Route::get('admin/product/cat/edit/{id}', [App\Http\Controllers\ProductCategoryController::class, 'edit'])->name('product.cat.edit');
Route::post('admin/product/cat/update/{id}', [App\Http\Controllers\ProductCategoryController::class, 'update'])->name('product.cat.update');
Route::get('admin/product/cat/delete/{id}', [App\Http\Controllers\ProductCategoryController::class, 'delete'])->name('product.cat.delete');

//permissions
Route::get('admin/permission/add', [App\Http\Controllers\PermissionController::class, 'add'])->name('permission.add');
Route::post('admin/permission/storeadd', [App\Http\Controllers\PermissionController::class, 'storeadd'])->name('permission.storeadd');
Route::get('admin/permission/delete/{id}', [App\Http\Controllers\PermissionController::class, 'delete'])->name('permission.delete');
Route::get('admin/permission/edit/{id}', [App\Http\Controllers\PermissionController::class, 'edit'])->name('permission.edit');
Route::post('admin/permission/update/{id}', [App\Http\Controllers\PermissionController::class, 'update'])->name('permission.update');

//Role
Route::get('admin/role/list', [App\Http\Controllers\RoleController::class, 'list'])->name('role.list');
Route::get('admin/role/add', [App\Http\Controllers\RoleController::class, 'add'])->name('role.add');
Route::post('admin/role/store', [App\Http\Controllers\RoleController::class, 'store'])->name('role.store');
Route::get('admin/role/edit/{role}', [App\Http\Controllers\RoleController::class, 'edit'])->name('role.edit');
Route::post('admin/role/update/{role}', [App\Http\Controllers\RoleController::class, 'update'])->name('role.update');
Route::get('admin/role/delete/{role}', [App\Http\Controllers\RoleController::class, 'delete'])->name('role.delete');

});


Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});
