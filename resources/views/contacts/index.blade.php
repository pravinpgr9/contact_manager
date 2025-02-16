<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacts List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Contacts List</h2>

        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

        <a href="{{ route('contacts.importForm') }}" class="btn btn-primary mb-3">Import XML</a>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone</th>
                </tr>
            </thead>
            <tbody>
                @foreach($contacts as $contact)
                <tr>
                    <td>{{ $contact->id }}</td>
                    <td>{{ $contact->first_name }}</td>
                    <td>{{ $contact->last_name }}</td>
                    <td>{{ $contact->phone }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>

        <!-- Custom Bootstrap Pagination -->
        <nav>
            <ul class="pagination justify-content-center">
                <!-- First Page Link -->
                <li class="page-item {{ $contacts->onFirstPage() ? 'disabled' : '' }}">
                    <a class="page-link" href="{{ $contacts->url(1) }}" aria-label="First">First</a>
                </li>

                <!-- Previous Page Link -->
                <li class="page-item {{ $contacts->onFirstPage() ? 'disabled' : '' }}">
                    <a class="page-link" href="{{ $contacts->previousPageUrl() }}" aria-label="Previous">Previous</a>
                </li>

                <!-- Pagination Links -->
                @php
                    $start = max($contacts->currentPage() - 2, 1);
                    $end = min($contacts->currentPage() + 2, $contacts->lastPage());
                @endphp

                @if($start > 1)
                    <li class="page-item disabled"><span class="page-link">...</span></li>
                @endif

                @for ($i = $start; $i <= $end; $i++)
                    <li class="page-item {{ $contacts->currentPage() == $i ? 'active' : '' }}">
                        <a class="page-link" href="{{ $contacts->url($i) }}">{{ $i }}</a>
                    </li>
                @endfor

                @if($end < $contacts->lastPage())
                    <li class="page-item disabled"><span class="page-link">...</span></li>
                @endif

                <!-- Next Page Link -->
                <li class="page-item {{ $contacts->hasMorePages() ? '' : 'disabled' }}">
                    <a class="page-link" href="{{ $contacts->nextPageUrl() }}" aria-label="Next">Next</a>
                </li>

                <!-- Last Page Link -->
                <li class="page-item {{ $contacts->hasMorePages() ? '' : 'disabled' }}">
                    <a class="page-link" href="{{ $contacts->url($contacts->lastPage()) }}" aria-label="Last">Last</a>
                </li>
            </ul>
        </nav>
    </div>
</body>
</html>
