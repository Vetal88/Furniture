@extends(env('THEME').'.layouts.main')

@section('header')
    {!! $header !!}
@endsection

@section('content')
    {!! $content !!}
@endsection

@section('bar')
    {!! $leftBar !!}
@endsection

@section('footer')
    {!! $footer !!}
@endsection