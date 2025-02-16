<?php 

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Support\Facades\Validator;
use SimpleXMLElement;
use Illuminate\Support\Facades\Session;
use App\Jobs\ImportContactsFromXML;

class ContactController extends Controller
{
    /**
     * Display a list of all contacts.
     */
    public function index()
    {
        $contacts = Contact::orderBy('id', 'desc')->paginate(10); // Paginate results
        return view('contacts.index', compact('contacts'));
    }

    // Show a specific contact
    public function show($id)
    {
        $contact = Contact::findOrFail($id);
        return view('contacts.show', compact('contact'));
    }

     // Show form to edit an existing contact
     public function edit($id)
     {
         $contact = Contact::findOrFail($id);
         return view('contacts.edit', compact('contact'));
     }

     public function create()
    {
        return view('contacts.create');
    }

    // Store a new contact
    public function store(Request $request)
    {
        $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'phone' => 'required|string|max:20',
        ]);

        Contact::create($request->all());

        return redirect()->route('contacts.index')->with('success', 'Contact added successfully!');
    }

    // Update an existing contact
    public function update(Request $request, $id)
    {
        $contact = Contact::findOrFail($id);

        $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'phone' => 'required|string|max:20',
        ]);

        $contact->update($request->all());

        return redirect()->route('contacts.index')->with('success', 'Contact updated successfully!');
    }

    // Delete a contact
    public function destroy($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->delete();

        return redirect()->route('contacts.index')->with('success', 'Contact deleted successfully!');
    }

    public function showImportForm()
    {
        return view('contacts.import');
    }

    /**
     * Import contacts from an XML file.
     */
    public function importXML(Request $request)
    {
        $request->validate([
            'xml_file' => 'required|file|mimes:xml',
        ]);
        
        // $xmlFile = $request->file('xml_file');
        // $xmlContent = file_get_contents($xmlFile->path());

        // Store the uploaded XML file
        $filePath = $request->file('xml_file')->store('imports');
        // Dispatch the job with the file path
        ImportContactsFromXML::dispatch($filePath);

        // Dispatch the job to process the XML in the background
        //ImportContactsFromXML::dispatch($xmlContent);

        Session::flash('success', 'Contacts import has been queued and will be processed in the background.');
        return redirect()->route('contacts.index');
    }
}
