<div class="col-md-3 product-price">

    <div class=" rsidebar span_1_of_left">
        <div class="of-left">
            <h3 class="cate">
                {{$categoryName}}</h3>
       {{--     <div class="text-center button-container">
                <button><a href="{{ route('shop.index') }}" class="button">All products</a></button>
            </div>--}}
        </div>
        <ul class="menu">

            <li class="item1"><a href="#">Home furniture </a>

                <ul class="cute">
                    @foreach($categories as $category)

                        <li class="subitem1">
                            @if($category->parent_id ==='1')
                                <a href="{{ route('shop.index', ['category' => $category->slug]) }}">{{ $category->name }}</a>

                        </li>
                        @endif
                    @endforeach
                </ul>

            </li>
         {{--   <li class="item2"><a href="#">Office furniture </a>
                <ul class="cute">
                    <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                    <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                    <li class="subitem3"><a href="single.html">Automatic Fails </a></li>
                </ul>
            </li>
            <li class="item3"><a href="#">Custom-made furniture</a>
                <ul class="cute">
                    <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                    <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                    <li class="subitem3"><a href="single.html">Automatic Fails</a></li>
                </ul>
            </li>--}}
            {{--    <li class="item4"><a href="#">Accesories</a>
                    <ul class="cute">
                        <li class="subitem1"><a href="single.html">Cute Kittens </a></li>
                        <li class="subitem2"><a href="single.html">Strange Stuff </a></li>
                        <li class="subitem3"><a href="single.html">Automatic Fails</a></li>
                    </ul>
                </li>

                <li class="item4"><a href="#">Shoes</a>
                    <ul class="cute">
                        <li class="subitem1"><a href="product.html">Cute Kittens </a></li>
                        <li class="subitem2"><a href="product.html">Strange Stuff </a></li>
                        <li class="subitem3"><a href="product.html">Automatic Fails </a></li>
                    </ul>
                </li>--}}
        </ul>
    </div>
    <!--initiate accordion-->
    <script type="text/javascript">
        $(function() {
            var menu_ul = $('.menu > li > ul'),
                menu_a  = $('.menu > li > a');
            menu_ul.hide();
            menu_a.click(function(e) {
                e.preventDefault();
                if(!$(this).hasClass('active')) {
                    menu_a.removeClass('active');
                    menu_ul.filter(':visible').slideUp('normal');
                    $(this).addClass('active').next().stop(true,true).slideDown('normal');
                } else {
                    $(this).removeClass('active');
                    $(this).next().stop(true,true).slideUp('normal');
                }
            });

        });
    </script>

    <div class=" per1">
      <img class="img-responsive" src="{{asset(env('THEME'))}}/images/pro.jpg" alt="">
            <div class="six1">
                <h4>DISCOUNT</h4>
                <p>Up to</p>
                <span>60%</span>
            </div>
    </div>
</div>