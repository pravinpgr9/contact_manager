<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contacts List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body>
    <div class="container mt-5">
        <div class="card shadow-lg">
            <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                <h2 class="mb-0">Contacts List</h2>
                <div>
                    <a href="{{ route('contacts.importForm') }}" class="btn btn-light btn-sm">
                        <i class="bi bi-upload"></i> Bulk Import XML
                    </a>
                    <a href="{{ route('contacts.create') }}" class="btn btn-success btn-sm">
                        <i class="bi bi-person-plus"></i> New Contact
                    </a>
                </div>
            </div>

            <div class="card-body">
                @if(session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif

                <table class="table table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Phone</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($contacts as $contact)
                        <tr>
                            <td>{{ $contact->id }}</td>
                            <td>{{ $contact->first_name }}</td>
                            <td>{{ $contact->last_name }}</td>
                            <td>{{ $contact->phone }}</td>
                            <td>
                                <a href="{{ route('contacts.edit', $contact->id) }}" class="btn btn-warning btn-sm">
                                    <i class="bi bi-pencil-square"></i> Edit
                                </a>
                                <form action="{{ route('contacts.destroy', $contact->id) }}" method="POST" class="d-inline">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">
                                        <i class="bi bi-trash"></i> Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div class="card-footer">
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
        </div>
    </div>
</body>
</html>
