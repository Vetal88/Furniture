@extends(env('THEME').'.layouts.main')

@section('header')
    {!! $header !!}
@endsection

@section('bar')
    {!! $leftBar !!}
@endsection

@section('content')
    {!! $content !!}
@endsection


@section('footer')
    {!! $footer !!}
@endsection