<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/contacts', [ContactController::class, 'index'])->name('contacts.index');
Route::get('/contacts/import', [ContactController::class, 'showImportForm'])->name('contacts.importForm');
Route::post('/contacts/import', [ContactController::class, 'importXML'])->name('contacts.import');
