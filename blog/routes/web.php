<?php

use Illuminate\Support\Facades\Route;
use App\Product;
use Illuminate\Http\Request;
use App\DetailBill;
use Illuminate\Support\Facades\Auth;
use App\Role;




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
//test cart 



//product
Route::get('/','ProductController@getAllProductPaginate')->name('/');

//chi tiet san pham
// Route::get('/detailProduct/{id}','ProductController@getDetailProductByID');
Route::get('shop-single-product/{id?}',[
   'as'=>'detailProduct',
   'uses'=>'ProductController@getDetailProductByID']
);

//tim kiem product
Route::get('/search','ProductController@searchProduct');

//TRANG TIM KIEM SAN PHAM
Route::get('/catalog','ProductController@Catalog');

//cart
Route::get('add-cart/{id}',['as'=>'add-cart','uses'=>'CartController@addCart']);
Route::get('cart',['as'=>'cart','uses'=>'CartController@cart']);
//decrement quality 
Route::get('de-quality/{rowID}',['as'=>'de-quality','uses'=>'CartController@deQuality']);
//incremnet quality
Route::get('in-quality/{rowID}',['as'=>'in-quality','uses'=>'CartController@inQuality']);
//delete item
Route::get('delete-item/{rowID}',['as'=>'delete-item','uses'=>'CartController@deleteItem']);

//test lien ket 
Route::get('/shop-cart',function(){
   return view('shop-cart');
});


//checkout 
Route::get('/shop-checkout',function(){
   if(Auth::user() == null){
      return redirect()->route('home');
   }
    return view('shop-checkout');
 });



//Auth router
Auth::routes(['verify' => true]);
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/infouser',function(){
   return view('infouser');
})->middleware('verified');



//AdminController - product
Route::resource('admins','Admin\AdminController')->middleware('CheckAdmin');
Route::resource('admin/products','Admin\ProductController')->middleware('CheckAdmin');
Route::resource('admin/manufacuters','Admin\ManufactureController')->middleware('CheckAdmin');
Route::resource('admin/typeproducts','Admin\TypeProductController')->middleware('CheckAdmin');
Route::resource('admin/users','Admin\UserController')->middleware('CheckSuperAdmin');
Route::resource('admin/banners','Admin\BannerController')->middleware('CheckAdmin');
//Route::resource('admin','Admin\AdminController')->middleware('CheckAdmin');

//xac nhan email
//Route::get('/', 'ProductController@getAllProductPaginate')->middleware('verified');
// Route::get('cart', function () {
//    // Only verified users may enter...
// })->middleware('verified');
// Route::get('/admin/product/{action?}/{id?}','AdminController@ProductAction');
// Route::get('/admin/{action?}','AdminController@index');
// Route::post('/admin/UploadProduct','AdminController@UploadProduct');
// Route::post('/admin/EditProduct','AdminController@EditProduct');
// Route::get('/product/delete/{id}','AdminController@DeleteProduct');


//ADMIN product
Route::get('/admin/product/{action?}/{id?}','AdminController@ProductAction');
Route::get('/admin/{action?}','AdminController@index');
Route::post('/admin/UploadProduct','AdminController@UploadProduct');
Route::post('/admin/EditProduct','AdminController@EditProduct');
Route::get('/product/delete/{id}','AdminController@DeleteProduct');

//BillController
Route::get('/shop-checkout',function(){
   if(Auth::user() == null){
      return redirect()->route('home');
   }
    return view('shop-checkout');
 });
Route::post('/GuiAnhThanhToan','BillController@GuiAnhThanhToan');
Route::get('/bill/XacNhanDonHang/{id}', 'BillController@XacNhanDonHang');
Route::get('/bill/HoanThanhDonHang/{id}', 'BillController@HoanThanhDonHang');
Route::get('/bill/paid', 'BillController@paid');
Route::get('/bill/unpaid', 'BillController@unpaid');
Route::get('/bill/BillSuccess', 'BillController@BillSuccess');
Route::post('/AddComment', 'BillController@AddComment');
// //ReportController
Route::get('/report/bestsale', 'ReportController@bestsale');
Route::get('/report/bestview', 'ReportController@bestview');
Route::get('/report/sales', 'ReportController@sales');
Route::post('/report/KiemTraDoanhThu', 'ReportController@KiemTraDoanhThu')->name('KiemTraDoanhThu');


