<!DOCTYPE html>
<html>
<head>
    <title>Furniture Shop</title>
    <link href="{{asset(env('THEME'))}}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="{{asset(env('THEME'))}}/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="{{asset(env('THEME'))}}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
    <!-- start menu -->
    <link href="{{asset(env('THEME'))}}/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="{{asset(env('THEME'))}}/js/memenu.js"></script>
   {{-- <script>$(document).ready(function(){$(".memenu").memenu();});</script>--}}
    <script src="{{asset(env('THEME'))}}/js/simpleCart.min.js"> </script>
    <script src="{{asset(env('THEME'))}}/js/bootstrap.min.js"></script>
    <script src="https://js.stripe.com/v3/"></script>
</head>
<body>
<!--header-->
@yield('header')

@yield('slider')

<!--content-->
<div class="content">
    <div class="container">
            @yield('bar')

           @yield('content')



    </div>
    <!---->
    <div class="content-bottom">
        <ul>
            <li><a href=""><img class="img-responsive" src="{{asset(env('THEME'))}}/images/blum.jpg" alt=""></a></li>
            <li><a href=""><img class="img-responsive" src="{{asset(env('THEME'))}}/images/Rejs.jpg" alt=""></a></li>
            <li><a href=""><img class="img-responsive" src="{{asset(env('THEME'))}}/images/arpa.jpg" alt=""></a></li>
            <li><a href=""><img class="img-responsive" src="{{asset(env('THEME'))}}/images/muller.jpg" alt=""></a></li>
            <li><a href=""><img class="img-responsive" src="{{asset(env('THEME'))}}/images/commandor.jpg" alt=""></a></li>
            <li><a href=""><img class="img-responsive" src="{{asset(env('THEME'))}}/images/hacker.jpg" alt=""></a></li>
            <div class="clearfix"> </div>
        </ul>
    </div>
</div>
@yield('footer')
</body>
</html>
