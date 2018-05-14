<div class="banner">
    <div class="container">
        <script src="{{asset(env('THEME'))}}/js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider").responsiveSlides({
                    auto: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <div  id="top" class="callbacks_container">
            <ul class="rslides" id="slider">
                @foreach($articleSlider as $article)
                <li>
                    <div class="banner-text">
                        <h3>{{$article->title}}</h3>

                        <p> {!!str_limit($article->text,203) !!}</p>

                        <a href="{{ route('article.show', $article->slug) }}">Learn More</a>
                    </div>
                </li>
@endforeach
            </ul>
        </div>

    </div>
</div>