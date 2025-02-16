<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Models\Contact;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;


class ProcessContactChunk implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $contacts;

    public function __construct(array $contacts)
    {
        $this->contacts = $contacts;
    }

    public function handle()
    {
        if (empty($this->contacts)) {
            return;
        }

        try {
            // Use DB transaction for fast batch insert
            DB::transaction(function () {
                Contact::insert($this->contacts);
            });

            Log::info("Inserted " . count($this->contacts) . " contacts successfully.");
        } catch (\Exception $e) {
            Log::error("Failed to insert contacts: " . $e->getMessage());
        }
    }
}
