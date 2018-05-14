<div class="container" xmlns="http://www.w3.org/1999/html">
    <div class="check">
{{--<div>
    @if(session()->has('success_message'))
        <div class="alert alert-success">
            {{session()->get('success_message')}}
        </div>
        @endif
        @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul id="noneList">
                    @foreach($errors->all() as $error)
                        <li>{{$error}}</li>
                        @endforeach
                </ul>
            </div>
        @endif
</div>--}}

@if(Cart::count()> 0)
            <h1><strong>{{Cart::count()}} item(s) in Shopping Bag</strong> </h1>

        <div class="col-md-9 cart-items">

            <script>$(document).ready(function(c) {
                    $('.close1').on('click', function(c){
                        $('.cart-header').fadeOut('easing', function(c){
                            $('.cart-header').remove();
                        });
                    });
                });
            </script>
            @foreach(Cart::content() as $item)
            <div class="cart-header">
                <form action="{{route('cart.destroy',$item->rowId)}}" method="POST">
                    {{csrf_field()}}
                    {{method_field('DELETE')}}
                    <button type="submit" class="close1"></button>

                </form>
                <div class="cart-sec simpleCart_shelfItem">
                    <div class="cart-item cyc">
                        <a href="{{route('shop.show',$item->model->slug)}}"><img src="{{asset('storage/'.thumbnail($item->model->image,'cropped'))}}" class="img-responsive" alt=""/></a>
                    </div>
                    <div class="cart-item-info">
                        <h3><a href="{{route('shop.show',$item->model->slug)}}">{{$item->model->name}}</a>
                            <span></span></h3>
                        <ul class="qty">
                            <li><p>Price : {{$item->model->price}}$</p></li><br>
                            <li><p>Color : {{$item->model->color}}</p></li><br>
                            <li> <p>Count :  <select class="quantity selcls" id="gender1" data-id="{{ $item->rowId }}">
                                @for ($i = 1; $i < 5 + 1 ; $i++)
                                    <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                @endfor
                            </select></p></li>

                        </ul>

                        <form action="{{route('cart.switchToSaveForLater',$item->rowId)}}" method="POST">
                            {{csrf_field()}}
                            <abbr title="Save for later"><button type="submit" class="imgLater"></button></abbr>

                        </form>
                        <div class="delivery">
                            <p>Delivered in 2-3 bussiness days</p>
                            <span></span>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                </div>
            </div>
            @endforeach



        </div>

        @else
            <div class="col-md-9">
            <div class="mce-spacer">
                <a href="{{route('shop.index')}}" class="BackToShoppingButtonCart">Back to Shopping</a>
            </div>
            </div>
        @endif
        <div class="col-md-3 cart-total">
            <a class="continue" href="{{route('shop.index')}}">Continue to basket</a>
            <div class="price-details">
                <h3>Price Details</h3>
                <span>Total</span>
                <span class="total1">${{Cart::subtotal()}}</span>
                @foreach(Cart::content() as $color)
                    @if(isset($color->model->color))
                        <span>Color</span>
                        <span class="total1">{{$color->model->color}}</span>
                    @else
                        <span>Color</span>
                        <span class="total1">---</span>
                    @endif
                @endforeach
                <br>
                <span>Delivery Charges</span>
                <span class="total1">--</span>
                <div class="clearfix"></div>
            </div>
            <ul class="total_price">
                <li class="last_price"> <h4>TOTAL</h4></li>
                <li class="last_price"><span>${{Cart::total()}}</span></li>
                <div class="clearfix"> </div>
            </ul>
            <div class="clearfix"></div>
            <a class="order" href="{{route('checkout.index')}}">Place Order</a>
          {{--  <div class="total-item">

                <h3>Apply coupon</h3>
                <form action="{{route('coupon.store')}}" method="POST">
                    {{csrf_field()}}
                    <input type="text" placeholder="coupon" id="coupon_code" name="coupon_code">
                    <button type="submit" class="button button-primary"></button>
                </form>
            </div>--}}
        </div>

        {{----}}
        @if(Cart::instance('saveForLater')->count()> 0)
            <h1>Save for later</h1>
            @foreach(Cart::instance('saveForLater')->content() as $item)
                <div class="cart-header">
                    <form action="{{route('saveForLater.destroy',$item->rowId)}}" method="POST">
                        {{csrf_field()}}
                        {{method_field('DELETE')}}
                        <button type="submit" class="close1"></button>

                    </form>


                    <div class="cart-sec simpleCart_shelfItem">
                        <div class="cart-item cyc">
                            <a href="{{route('shop.show',$item->model->slug)}}"><img src="{{asset('storage/'.thumbnail($item->model->image,'cropped'))}}" class="img-responsive" alt=""/></a>
                        </div>
                        <div class="cart-item-info">
                            <h3><a href="{{route('shop.show',$item->model->slug)}}">{{$item->model->name}}</a>
                                <span></span></h3>
                            <ul class="qty">
                                <li><p>Price : {{$item->model->price}}$</p></li><br>
                                <li><p>Color : {{$item->model->color}}</p></li><br>
                            </ul>
                            <form action="{{route('saveForLater.switchToCart',$item->rowId)}}" method="POST">
                                {{csrf_field()}}
                                <button type="submit" class="close">Move to Cart</button>

                            </form>

                            <div class="delivery">
                                <p>Delivered in 2-3 bussiness days</p>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>

                    </div>
                </div>
            @endforeach
                @endif

        <div class="clearfix"> </div>
    </div>
</div>
<script src="{{asset('js/app.js')}}"></script>
<script>

    (function(){
    const  classname = document.querySelectorAll('.quantity');
        Array.from(classname).forEach(function (element) {
        element.addEventListener('change',function () {
            const id = element.getAttribute('data-id');
            axios.patch(`/cart/${id}`, {
               quantity:this.value
            })
                .then(function (response) {
                    console.log(response);
                    window.location.href = '{{route('cart.index')}}'
                })
                .catch(function (error) {
                    console.log(error);
                    window.location.href = '{{route('cart.index')}}'
                });
        })
        })
    })();
</script>