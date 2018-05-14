<div class="container" xmlns="http://www.w3.org/1999/html"><br>


        @if(Cart::count()> 0)
            <h1><strong>{{Cart::count()}} item(s) in Checkout</strong> </h1><br>

        <div class="col-md-9 cart-items">
                         <form action="{{ route('checkout.store') }}" method="POST" id="payment-form">
                             {{ csrf_field() }}
                        <div class="col-md-9 register-top-grid">
                            <h3>Personal infomation</h3>
                            <div>
                                <span>Email Address</span>
                                <input type="text"  id="email" name="email" value="{{ old('email') }}" required>
                            </div>
                            <div>
                                <span>Name</span>
                                <input type="text" id="name" name="name" value="{{ old('name') }}" required>
                            </div>
                            <div>
                                <span>Address</span>
                                <input type="text" id="address" name="address" value="{{ old('address') }}" required>
                            </div>

                          {{--  <a class="news-letter" href="#">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
                            </a>--}}
                            <div class="half-form">
                                <div class="form-group">
                                    <span>City</span>
                                    <input type="text" id="city" name="city" value="{{ old('city') }}" required>
                                </div>
                                <div class="form-group">
                                    <span>Province</span>
                                    <input type="text" id="province" name="province" value="{{ old('province') }}" required>
                                </div>
                            </div> <!-- end half-form -->
                            <div class="half-form">
                                <div class="form-group">
                                    <span>Postal Code</span>
                                    <input type="text" id="postalcode" name="postalcode" value="{{ old('postalcode') }}" required>
                                </div>
                                <div class="form-group">
                                    <span>Phone</span>
                                    <input type="text" id="phone" name="phone" value="{{ old('phone') }}" required>
                                </div>
                            </div> <!-- end half-form -->
                            <div class="spacer"></div>
                            <div class="clearfix"> </div>
                            <h2>Payment Details</h2>

                            <div class="form-group">
                                <span>Name on Card</span>
                                <input type="text" class="" id="name_on_card" name="name_on_card" value="">
                            </div>

                            <div class="form-group">
                                <label for="card-element">
                                    Credit or debit card
                                </label>
                                <div id="card-element">
                                    <!-- a Stripe Element will be inserted here. -->
                                </div>

                                <!-- Used to display form errors -->
                                <div id="card-errors" role="alert"></div>
                            </div>
                            <div class="spacer"></div>

                            <button type="submit" id="complete-order" class="button-primary full-width">Complete Order</button>
                        </div>
                    </form>
                </div>
        @else
            <div class="col-md-9 cart-items">
            <div class="mce-spacer">
                <a href="{{route('shop.index')}}" class="BackToShoppingButton" id="BackToShoppingButton">Back to Shopping</a>
            </div>
            </div>
        @endif




        <div class="col-md-3 cart-total">

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
                                <li><p>Price : {{$item->subtotal}}$</p></li><br>
                                <li><p>Count : {{$item->qty}} , Color : {{$item->model->color}}</p></li><br>

                            </ul>
                        </div>
                        <div class="clearfix"></div>

                    </div>
                </div>
            @endforeach
            <a class="continue" href="{{route('shop.index')}}">Continue to basket</a>
            <div class="price-details">
                <h3>Price Details</h3>
                <span>Total</span>
                <span class="total1">${{Cart::subtotal()}}</span>
                @if(session()->has('coupon'))
                <span>Discount ({{session()->get('coupon')['name']}}) </span>
                <span class="total1">${{session()->get('coupon')['discount']}}</span>
                <form action="{{route('coupon.destroy')}}" method="POST">
                    {{csrf_field()}}
                    {{method_field('delete')}}
                    <button type="submit" style="font-size:10px;border: none">Remove</button>
                </form>
                    @else
                    <span>Discount</span>
                    <span class="total1">---</span>
                @endif
                <div class="clearfix"></div>
            </div>
            <ul class="total_price">
                @if(!$discount)
                <li class="last_price"> <h4>Total</h4></li>
                <li class="last_price"><span>${{Cart::total()}}</span></li>
                @endif

                @if($discount)
                <li class="last_price"> <h5>New Subtotal</h5></li>
                        <li class="last_price"><h5>${{$newSubtotal}}</h5></li>
@endif
                <div class="clearfix"> </div>
                <hr>
                <h4>Apply coupon</h4>

                <form action="{{route('coupon.store')}}" method="POST">
                    {{csrf_field()}}
                    <div class="col-md-9 register-top-grid" style="width: 100%;padding: 0px; ">
                    <input type="text" placeholder="Enter name discount coupon" id="coupon_code" name="coupon_code">
                        <a class="cpns" id="Buttoncoupon"><button type="submit" class="button button-primary" id="couponButton">Apply Coupons</button></a>
                    </div>
                </form>
            </ul>


            <div class="clearfix"></div>
            <hr>
        </div>

        <div class="clearfix"> </div>
    </div>
<script>
    (function(){
        // Create a Stripe client
        var stripe = Stripe('pk_test_7dBc6G4aE3zAXvEuYzw0WvPR');

        // Create an instance of Elements
        var elements = stripe.elements();

        // Custom styling can be passed to options when creating an Element.
        // (Note that this demo uses a wider set of styles than the guide below.)
        var style = {
            base: {
                color: '#32325d',
                lineHeight: '18px',
                fontFamily: '"Roboto", Helvetica Neue", Helvetica, sans-serif',
                fontSmoothing: 'antialiased',
                fontSize: '16px',
                '::placeholder': {
                    color: '#aab7c4'
                }
            },
            invalid: {
                color: '#fa755a',
                iconColor: '#fa755a'
            }
        };

        // Create an instance of the card Element
        var card = elements.create('card', {
            style: style,
            hidePostalCode: true
        });

        // Add an instance of the card Element into the `card-element` <div>
        card.mount('#card-element');

        // Handle real-time validation errors from the card Element.
        card.addEventListener('change', function(event) {
            var displayError = document.getElementById('card-errors');
            if (event.error) {
                displayError.textContent = event.error.message;
            } else {
                displayError.textContent = '';
            }
        });

        // Handle form submission
        var form = document.getElementById('payment-form');
        form.addEventListener('submit', function(event) {
            event.preventDefault();

            // Disable the submit button to prevent repeated clicks
            document.getElementById('complete-order').disabled = true;

            var options = {
                name: document.getElementById('name_on_card').value,
                address_line1: document.getElementById('address').value,
                address_city: document.getElementById('city').value,
                address_state: document.getElementById('province').value,
                address_zip: document.getElementById('postalcode').value
            };

            stripe.createToken(card, options).then(function(result) {
                if (result.error) {
                    // Inform the user if there was an error
                    var errorElement = document.getElementById('card-errors');
                    errorElement.textContent = result.error.message;

                    // Enable the submit button
                    document.getElementById('complete-order').disabled = false;
                } else {
                    // Send the token to your server
                    stripeTokenHandler(result.token);
                }
            });
        });

        function stripeTokenHandler(token) {
            // Insert the token ID into the form so it gets submitted to the server
            var form = document.getElementById('payment-form');
            var hiddenInput = document.createElement('input');
            hiddenInput.setAttribute('type', 'hidden');
            hiddenInput.setAttribute('name', 'stripeToken');
            hiddenInput.setAttribute('value', token.id);
            form.appendChild(hiddenInput);

            // Submit the form
            form.submit();
        }
    })();
</script>