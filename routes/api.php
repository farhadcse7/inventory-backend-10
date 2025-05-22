<?php

use App\Http\Controllers\Api\BrandController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\SystemSettingController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/login', [LoginController::class, 'login']);


Route::middleware('auth:sanctum')->group(function(){
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    /* System Setting routes */
    Route::apiResource('/system-setting', SystemSettingController::class)->only(['index', 'update']);

    /* Category routes */
    Route::get('/all-categories', [CategoryController::class, 'allCategories']);
    Route::get('/categories/status/{id}', [CategoryController::class, 'status']);
    Route::apiResource('/categories', CategoryController::class);

    /* Brand routes */
    Route::get('/all-brands', [BrandController::class, 'allBrands']);
    Route::get('/brands/status/{id}', [BrandController::class, 'status']);
    Route::apiResource('/brands', BrandController::class);


});
