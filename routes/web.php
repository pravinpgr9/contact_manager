<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactController;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/contacts', [ContactController::class, 'index'])->name('contacts.index');
Route::get('/contacts/import', [ContactController::class, 'showImportForm'])->name('contacts.importForm');
Route::post('/contacts/import', [ContactController::class, 'importXML'])->name('contacts.import');

Route::get('/contacts/{id}/edit', [ContactController::class, 'edit'])->name('contacts.edit'); // Edit Contact Page
Route::put('/contacts/{id}', [ContactController::class, 'update'])->name('contacts.update'); // Update Contact
Route::delete('/contacts/{id}', [ContactController::class, 'destroy'])->name('contacts.destroy'); // Delete Contact

Route::get('/contacts/create', [ContactController::class, 'create'])->name('contacts.create'); // New Contact Page
Route::post('/contacts', [ContactController::class, 'store'])->name('contacts.store'); // Store New Contact

