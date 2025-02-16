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
