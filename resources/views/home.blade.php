<x-layout :categories="$categories" :appname="$appname" :menu="$menu" :submenu="$submenu">

    <x-carousel :sliders="$sliders" />

    <section class="my-5">
      <div class="container">
        <div class="row">
          <div class="col-12 text-center">
            <h2 class="display-6">Our Product</h2>
            <div>Lorem ipsum dolor sit, amet consectetur adipisicing elit.</div>
            <x-category :categories="$categories" />
    
            @if(request('category'))
                @php
                    $activeCategory = $categories->firstWhere('id', request('category'));
                @endphp

                <!-- @if($activeCategory)
                    <h2 class="text-dark mt-4">Produk dalam kategori: {{ $activeCategory->title }}</h2>
                @endif -->
            @endif

          </div>
        </div>
        <x-products :$products />
      </div>
    </section>

</x-layout>
