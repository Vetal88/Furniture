<div class="content-top-search">

    <h1>Search Results</h1>
    <p>{{$products->total()}} result(s) for '{{request()->input('query')}}'</p>

    @if($products)
        @foreach($products->chunk(6) as $chunk)
            <div class="grid-in">
                @foreach ($chunk as $product)
                    <div class="col-md-4 grid-top"  id="mainPageFirstSixProduct">
                            <a href="{{ route('shop.show', $product->slug) }}" class="b-link-stripe b-animate-go  thickbox">
                            <img class="img-responsive" src="{{asset('storage/'.thumbnail($product->image,'cropped')) }}" alt="">
                            <div class="b-wrapper">
                                <h3 class="b-animate b-from-left b-delay03 ">
                                    <span>{{$product->name}}</span>
                                </h3>
                            </div>

                        </a>
                        <br>
                        <p class="priceSearch">Price : ${!!$product->price !!}</p>
                        <p class="tun">{!! replaceParagraph($product->description,250) !!}</p>
                        <p><a href="{{ route('shop.show', $product->slug) }}"></a></p>

                    </div>

                @endforeach
                <div class="clearfix"> </div>
                    <nav class="in">
                        <ul class="pagination">
                            {{ $products->appends(request()->input())->links() }}
                        </ul>
                    </nav>
            </div>
        @endforeach
    @endif
</div>

{{--<div class=" bottom-product">

       <h1>Search Results</h1>
          <p>{{$products->count()}} result(s) for '{{request()->input('query')}}'</p>
          @foreach($products as $product)
          <div>{{$product->name}}</div>
          <div>    <img class="img-responsive" src="{{asset('storage/'.thumbnail($product->image,'cropped'))}}" alt=""></div>
              @endforeach

      </div>--}}




