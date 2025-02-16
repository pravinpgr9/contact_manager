<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable; // Add this line
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Models\Contact;
use SimpleXMLElement;
use Illuminate\Support\Facades\Log;
use XMLReader;
use Illuminate\Support\Facades\Storage;


class ImportContactsFromXML implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $filePath;

    public function __construct($filePath)
    {
        $this->filePath = $filePath;
    }

    public function handle()
{
    $fullPath = Storage::path($this->filePath);

    if (!file_exists($fullPath)) {
        Log::error("File not found: " . $fullPath);
        return;
    }

    $reader = new XMLReader();
    $reader->open($fullPath);

    $batchSize = 1000; // Process 1000 records at a time
    $contacts = [];
    $totalRecords = 0;

    while ($reader->read()) {
        if ($reader->nodeType == XMLReader::ELEMENT && $reader->localName == 'contact') {
            $totalRecords++; // Count the contact nodes
        }
    }

    Log::info("Total contacts found in XML file: " . $totalRecords);

    // Reset XMLReader to start processing
    $reader->close();
    $reader->open($fullPath);

    while ($reader->read()) {
        if ($reader->nodeType == XMLReader::ELEMENT && $reader->localName == 'contact') {
            $xml = simplexml_load_string($reader->readOuterXML());

            $contacts[] = [
                'first_name' => (string) $xml->first_name,
                'last_name'  => (string) $xml->last_name,
                'phone'      => (string) $xml->phone,
                'created_at' => now(),
                'updated_at' => now(),
            ];

            // Dispatch a new job when 1000 records are reached
            if (count($contacts) >= $batchSize) {
                ProcessContactChunk::dispatch($contacts);
                $contacts = []; // Clear array for next batch
            }
        }
    }

    // Dispatch remaining contacts
    if (!empty($contacts)) {
        ProcessContactChunk::dispatch($contacts);
    }

    $reader->close();

    // Delete the file after processing
    Storage::delete($this->filePath);
}
}


// class ImportContactsFromXML implements ShouldQueue
// {
//     use Dispatchable, InteractsWithQueue, Queueable, SerializesModels; // Include Dispatchable here

//     protected $xmlContent;

//     /**
//      * Create a new job instance.
//      *
//      * @param string $xmlContent
//      */
//     public function __construct($xmlContent)
//     {
//         $this->xmlContent = $xmlContent;
//     }

//     /**
//      * Execute the job.
//      */
//     public function handle()
//     {
//         $xml = simplexml_load_string($this->xmlContent);

//         if ($xml === false) {
//             Log::error('Failed to parse XML content.');
//             return;
//         }

//         foreach ($xml->contact as $contact) {
//             Contact::create([
//                 'first_name' => (string) $contact->first_name,
//                 'last_name'  => (string) $contact->last_name,
//                 'phone'      => (string) $contact->phone,
//             ]);
//         }

//         Log::info('Contacts imported successfully.');
//     }
// }