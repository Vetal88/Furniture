<!--content-->
<div class="blog">
    <div class="container">
        <div class="blog-top">


            <div class=" grid_3 grid-1">
                <h3>{{$single->title}}</h3>
                <img src="{{asset('storage/'.thumbnail($single->image,'medium'))}}" class="img-responsive" alt=""/>

                <div class="blog-poast-info">
                    <ul>
                        <li><span><i class="date"> </i>{{Carbon\Carbon::parse($single->created_at)->format('j F Y')}}</span></li>
                    </ul>
                </div>
                    {!! $single->text !!}
            </div>
        </div>
    </div>
</div>
<!--//content-->

