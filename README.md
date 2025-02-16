# Laravel Contacts Manager

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

## About This Project

This Laravel-based Contacts Manager allows users to import contacts from an XML file, perform CRUD operations via web routes, and display them with pagination. It includes:

- XML file import functionality.
- Full CRUD (Create, Read, Update, Delete) operations for managing contacts via web routes.
- Database migrations to create the `contacts` table.
- A paginated contacts list with improved navigation.

## Features Implemented

### 1. **Database Migration for Contacts Table**

We created a migration file to define the `contacts` table:

```php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('last_name');
            $table->string('phone');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('contacts');
    }
};
```

Run the migration:
```sh
php artisan migrate
```

### 2. **CRUD Operations (Web Routes)**

#### **Routes (`web.php`)**
```php
Route::get('/contacts', [ContactController::class, 'index'])->name('contacts.index');
Route::get('/contacts/import', [ContactController::class, 'showImportForm'])->name('contacts.importForm');
Route::post('/contacts/import', [ContactController::class, 'importXML'])->name('contacts.import');

Route::get('/contacts/{id}/edit', [ContactController::class, 'edit'])->name('contacts.edit'); // Edit Contact Page
Route::put('/contacts/{id}', [ContactController::class, 'update'])->name('contacts.update'); // Update Contact
Route::delete('/contacts/{id}', [ContactController::class, 'destroy'])->name('contacts.destroy'); // Delete Contact

Route::get('/contacts/create', [ContactController::class, 'create'])->name('contacts.create'); // New Contact Page
Route::post('/contacts', [ContactController::class, 'store'])->name('contacts.store'); // Store New Contact
```

#### **Create a Contact**
```php
public function store(Request $request)
{
    $request->validate([
        'first_name' => 'required|string',
        'last_name' => 'required|string',
        'phone' => 'required|string'
    ]);

    Contact::create($request->all());
    return redirect()->route('contacts.index')->with('success', 'Contact added successfully!');
}
```

#### **Read Contacts (List with Pagination)**
```php
public function index()
{
    $contacts = Contact::paginate(10);
    return view('contacts.index', compact('contacts'));
}
```

#### **Update a Contact**
```php
public function update(Request $request, Contact $contact)
{
    $request->validate([
        'first_name' => 'required|string',
        'last_name' => 'required|string',
        'phone' => 'required|string'
    ]);

    $contact->update($request->all());
    return redirect()->route('contacts.index')->with('success', 'Contact updated successfully!');
}
```

#### **Delete a Contact**
```php
public function destroy(Contact $contact)
{
    $contact->delete();
    return redirect()->route('contacts.index')->with('success', 'Contact deleted successfully!');
}
```

### 3. **Importing Contacts from an XML File**

Users can upload an XML file containing contacts. The data is parsed and stored in the database.

#### Controller (`ContactController.php`)
```php
public function importXML(Request $request)
{
    $request->validate(['xml_file' => 'required|mimes:xml']);

    $xmlContent = simplexml_load_file($request->file('xml_file'));

    foreach ($xmlContent->contact as $contact) {
        Contact::create([
            'first_name' => (string) $contact->first_name,
            'last_name' => (string) $contact->last_name,
            'phone' => (string) $contact->phone
        ]);
    }

    return redirect()->route('contacts.index')->with('success', 'Contacts imported successfully!');
}
```

### 4. **Displaying Contacts List with Improved Pagination**

The contacts list is displayed with Laravel pagination, ensuring smooth navigation even for large datasets.

#### Blade View (`contacts/index.blade.php`)
```blade
<nav>
    <ul class="pagination justify-content-center">
        <li class="page-item {{ $contacts->onFirstPage() ? 'disabled' : '' }}">
            <a class="page-link" href="{{ $contacts->url(1) }}">First</a>
        </li>
        <li class="page-item {{ $contacts->onFirstPage() ? 'disabled' : '' }}">
            <a class="page-link" href="{{ $contacts->previousPageUrl() }}">Previous</a>
        </li>
        
        @for ($i = 1; $i <= $contacts->lastPage(); $i++)
            <li class="page-item {{ $contacts->currentPage() == $i ? 'active' : '' }}">
                <a class="page-link" href="{{ $contacts->url($i) }}">{{ $i }}</a>
            </li>
        @endfor
        
        <li class="page-item {{ $contacts->hasMorePages() ? '' : 'disabled' }}">
            <a class="page-link" href="{{ $contacts->nextPageUrl() }}">Next</a>
        </li>
        <li class="page-item {{ $contacts->hasMorePages() ? '' : 'disabled' }}">
            <a class="page-link" href="{{ $contacts->url($contacts->lastPage()) }}">Last</a>
        </li>
    </ul>
</nav>
```

## Sample XML Files

Sample XML files are available in the root directory of the GitHub repository:

- **`SampleXML_large_contacts.xml`** - Contains a large dataset of contacts for testing pagination and performance.
- **`SampleXMLcontacts.xml`** - A smaller sample XML file for quick testing.

## Installation Instructions

1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/contacts-manager.git
   cd contacts-manager
   ```

2. Install dependencies:
   ```sh
   composer install
   ```

3. Configure `.env` file:
   ```sh
   cp .env.example .env
   php artisan key:generate
   ```
   Set database credentials in `.env`:
   ```env
   DB_DATABASE=your_database_name
   DB_USERNAME=your_db_user
   DB_PASSWORD=your_db_password
   ```

4. Run migrations:
   ```sh
   php artisan migrate
   ```

5. Serve the application:
   ```sh
   php artisan serve
   ```

6. Open in browser: [http://127.0.0.1:8000](http://127.0.0.1:8000)

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

