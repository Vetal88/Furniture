<div class="products-header" style="float: right; max-width: 60%"> <div>
        <strong>Price: </strong>
        <a  href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'low_high']) }}">{{config('settings.Low-to-High')}}</a> |
        <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'high_low']) }}">{{config('settings.High-to-Low')}}</a>

    </div>

</div>

<div class="product">
        <div class="container">

        <div class="col-md-9 product1">

         @foreach ($products->chunk(3) as $chunk)
            <div class=" bottom-product">
             @foreach ($chunk as $product)
                <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                    <div class="product-at ">
                        <a href="{{ route('shop.show', $product->slug) }}">
                            @if(isset($product->image))
                            <img class="img-responsive" src="{{asset('storage/'.thumbnail($product->image,'cropped'))}}" alt="">
                                @else
                                <img class="img-responsive" src="{{productImage()}}" alt="">

                            @endif
                            <div class="pro-grid">
                                <span class="buy-in">Buy Now</span>
                            </div>
                        </a>
                    </div>
                    <p class="tun">{!! replaceParagraph($product->description,50) !!}</p>




                    <form action="{{ route('cart.store') }}" method="POST">
                        {{ csrf_field() }}
                        <input type="hidden" name="id" value="{{ $product->id }}">
                        <input type="hidden" name="name" value="{{ $product->name }}">
                        <input type="hidden" name="price" value="{{ $product->price }}">
                        <input type="hidden" name="color" value="{{ $product->color }}">

                        <button type="submit" id="buttonShop"><a href="#" class="item_add"><p class="number item_price"><i> </i>${{$product->price}}</p></a></button>

                    </form>
                </div>
                @endforeach
                <div class="clearfix"> </div>

            </div>

@endforeach
          
        </div>
        <div class="clearfix"> </div>
        <nav class="in">
            <ul class="pagination">
                {{ $products->appends(request()->input())->links() }}
            </ul>
        </nav>
    </div>

</div>

<!---->


