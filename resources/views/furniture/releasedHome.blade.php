<div class="content-top">

    <h1>HOME FURNITURE</h1>

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
            <p><a href="{{ route('shop.show', $product->slug) }}"></a></p>

        </div>
            @endforeach
        <div class="clearfix"> </div>
    </div>
        @endforeach
    @endif
</div>

<div class="content-top-bottom">
    <h2>Featured Collections</h2>
    @foreach($productsFeatured->slice(0,1) as $featured)
    <div class="col-md-6 men">
        <a href="{{ route('shop.show', $featured->slug) }}" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="{{asset('storage/'.thumbnail($featured->image,'medium')) }}" alt="">
            <div class="b-wrapper">
                <h3 class="b-animate b-from-top top-in   b-delay03 ">
                    <span>{{$featured->name}}</span>
                </h3>
            </div>
        </a>


    </div>
    @endforeach
    <div class="col-md-6">
        @foreach($productsFeatured->slice(1,1) as $featured)
        <div class="col-md1 ">
            <a href="{{ route('shop.show', $featured->slug) }}" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="{{asset('storage/'.thumbnail($featured->image,'long')) }}" alt="">
                <div class="b-wrapper">
                    <h3 class="b-animate b-from-top top-in1   b-delay03 ">
                        <span>{{$featured->name}}</span>
                    </h3>
                </div>
            </a>

        </div>
        @endforeach
        <div class="col-md2">
            @foreach($productsFeatured->slice(2,1) as $featured)
            <div class="col-md-6 men1">
                <a href="{{ route('shop.show', $featured->slug) }}" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="{{asset('storage/'.thumbnail($featured->image,'small')) }}" alt="">
                    <div class="b-wrapper">
                        <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                            <span>{{$featured->name}}</span>
                        </h3>
                    </div>
                </a>

            </div>
            @endforeach
                @foreach($productsFeatured->slice(3,1) as $featured)
                    <div class="col-md-6 men2">
                        <a href="{{ route('shop.show', $featured->slug) }}" class="b-link-stripe b-animate-go  thickbox"><img class="img-responsive" src="{{asset('storage/'.thumbnail($featured->image,'small')) }}" alt="">
                            <div class="b-wrapper">
                                <h3 class="b-animate b-from-top top-in2   b-delay03 ">
                                    <span>{{$featured->name}}</span>
                                </h3>
                            </div>
                        </a>

                    </div>
                @endforeach
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="clearfix"> </div>
</div>
