<div class="header">
    <div class="header-top">
        <div class="container">

            <div class="search">
                <form action="{{route('search.index')}}" method="GET" class="search-form">
                    <i class="fa fa-search input-search-icon"></i>
                    <input type="text" name="query" id="query" value="{{request()->input('query')}}" placeholder="Search product">
                    <input type="submit" value="Go">
                </form>
            </div>
            <div class="header-left">
                <ul>
                </ul>

                @if(Cart:: instance('default')->count()> 0)
                <div class="cart box_1">
                    <a href="{{route('cart.index')}}">
                        <h3> <div class="total">
                                <span class="simpleCart">${{Cart::total()}}</span> ({{--<span id="simpleCart_quantity" class="simpleCart_quantity"></span>--}}
                                {{Cart:: instance('default')->count()}} item(s))</div>
                            <img src="{{asset(env('THEME'))}}/images/cart.png" alt=""/></h3>
                    </a>
                    <p>
                    @foreach(Cart::content() as $item)
                    <form action="{{route('cart.destroy',$item->rowId)}}" method="POST">
                        {{csrf_field()}}
                        {{method_field('DELETE')}}
                        @endforeach
                        <button type="submit" class="emptyCartButton">Clear cart</button>

                    </form>
                    </p>
                    @else
                            <a href="{{route('cart.index')}}">
                            <img src="{{asset(env('THEME'))}}/images/cart.png" alt=""/> </a>
                    @endif

                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="container">

        <div class="head-top">
            <div class="logo">
                <a href="{{route('home')}}"><img src="{{asset(env('THEME'))}}/images/logo.png" alt=""></a>
            </div>
            <div id="testt" class=" h_menu4">
                <ul class="memenu skyblue">
                   {!!  menu('Main','bootstrap')!!}
                </ul>
            </div>

            <div class="clearfix"> </div>

        </div>

    </div>

</div>
<div style="text-align: center;">
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
</div>