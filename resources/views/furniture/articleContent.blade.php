
<!--content-->
<div class="blog">
    <div class="container">
        <h1>Blog</h1>
       @foreach($articles->chunk(2) as $chunk)
        <div class="blog-top">
            @foreach($chunk as $article)
            <div class="col-md-6 grid_3">
                <h3><a href="{{ route('article.show', $article->slug) }}">{{$article->title}}</a></h3>
                <a href="{{ route('article.show', $article->slug) }}">
                    <img src="{{asset('storage/'.thumbnail($article->image,'small'))}}" class="img-responsive" alt=""/></a>

                <div class="blog-poast-info">
                    <ul>
                        <li><span><i class="date"> </i>{{Carbon\Carbon::parse($article->created_at)->format('F j Y')}}</span></li>
                    </ul>
                </div>
                {{$article->excerpt}}
                <div class="button"><a href="{{ route('article.show', $article->slug) }}">Read More</a></div>
            </div>
         @endforeach
            <div class="clearfix"> </div>

        </div>
           @endforeach
        <nav class="in">
            <ul class="pagination">
                {{ $articles->appends(request()->input())->links() }}
            </ul>
        </nav>
    </div>
</div>
<!--//content-->

