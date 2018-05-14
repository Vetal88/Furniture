
        <div class="col-md-9 product-price1">
            <div class="col-md-5 single-top">
                <div class="flexslider">
                    <ul class="slides">
                        @if(isset($product->images))

                            @foreach(json_decode($product->images,true) as $image)
                                <li data-thumb="{{asset('storage/'.thumbnail($image,'cropped'))}}">
                                    <img src="{{asset('storage/'.thumbnail($image,'cropped'))}}" >
                                </li>

                            @endforeach
                        @else
                            <img class="img-responsive" src="{{productImage()}}" alt="">
                        @endif
                    </ul>
                </div>
                <!-- FlexSlider -->
               <script defer src="{{asset(env('THEME'))}}/js/jquery.flexslider.js"></script>

               <link rel="stylesheet" href="{{asset(env('THEME'))}}/css/flexslider.css" type="text/css" media="screen" />

                <script>
                    // Can also be used with $(document).ready()
                   $(window).load(function() {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                  /*  $(document).ready(function(){
                        $("#example1").tiksluscarousel({width:1900,height:2248,nav:'thumbnails',current:1,type:'zoom'});
                    });*/

                </script>
            </div>
            <div class="col-md-7 single-top-in simpleCart_shelfItem">
                <div class="single-para ">
                    <h4>{{$product->name}}</h4>
                   {{-- <div class="star-on">

                        <div class="clearfix"> </div>
                    </div>--}}

                    <h5 class="item_price">${{$product->price}}</h5>
                    <p>{!!str_limit($product->description,350)!!} </p>
                    <div class="available">
                        <ul>
                            <li>Color
                                <select disabled="disabled">
                                    <option>{{$product->color}}</option>
                                </select></li>
                            <div class="clearfix"> </div>
                        </ul>
                    </div>
                    <form action="{{ route('cart.store') }}" method="POST">
                        {{ csrf_field() }}
                        <input type="hidden" name="id" value="{{ $product->id }}">
                        <input type="hidden" name="name" value="{{ $product->name }}">
                        <input type="hidden" name="price" value="{{ $product->price }}">
                        <input type="hidden" name="color" value="{{ $product->color }}">

                        <button type="submit" id="buttonShopSingle"><a href="#" class="item_add"><p class="number item_price" style="   margin: 0em 0"><i> </i>Add to Cart</p></a></button>
                        </form>
                </div>
            </div>
            <div class="clearfix"> </div>
            <!---->
            <div class="cd-tabs">

                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#home">Description</a></li>
                        <li><a data-toggle="tab" href="#menu1">Addtional Informatioan</a></li>
                       {{-- <li><a data-toggle="tab" href="#menu2">Others</a></li>--}}
                    </ul>
            <div class="facts">
                <div class="tab-content">

                    <div id="home" class="tab-pane fade in active">
                        <p>{!! $product->description !!}</p>
                    </div>

                    <div id="menu1" class="tab-pane fade">
                        <div class="color">
                            {{$product->details}}
                        </div>
                    </div>

                </div>
            </div>
        </div>

            <div class=" bottom-product">

            @foreach($mightAlsoLike as $like)
                <div class="col-md-4 bottom-cd simpleCart_shelfItem">
                    <div class="product-at ">
                        <a href="{{$like->slug}}"><img class="img-responsive" src="{{asset('storage/'.thumbnail($like->image,'cropped'))}}" alt="">
                            <div class="pro-grid">
                                <span class="buy-in">Buy Now</span>
                            </div>
                        </a>
                    </div>
                    <p class="tun">{{str_limit($like->details,70)}}</p>
                    <form action="{{ route('cart.store') }}" method="POST">
                        {{ csrf_field() }}
                        <input type="hidden" name="id" value="{{ $like->id }}">
                        <input type="hidden" name="name" value="{{ $like->name }}">
                        <input type="hidden" name="price" value="{{ $like->price }}">
                        <input type="hidden" name="color" value="{{ $product->color }}">

                        <button type="submit" id="buttonShop"><a href="#" class="item_add"><p class="number item_price"><i> </i>${{$like->price}}</p></a></button>

                    </form>
                </div>
            @endforeach
            </div>

                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="clearfix"> </div>

