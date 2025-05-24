<div class="mt-4 mb-5 link-category d-flex flex-wrap justify-content-center gap-2">
    @foreach($categories as $category)
        <a href="{{ route('home', ['category' => $category->id]) }}"
           class="btn btn-outline-primary {{ request('category') == $category->id ? 'fw-bold active text-white bg-primary' : '' }}">
            {{ $category->title }}
        </a>
    @endforeach
</div>

<style>
    .btn-outline-primary:hover {
        background-color: #0d6efd;
        color: #0d6efd;
        border-color: #0d6efd;
    }
</style>
