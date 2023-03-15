<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Qurilish</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <link href="{{ asset('./backend/img/favicon.png') }}" rel="icon">
  <link href="{{ asset('./backend/img/apple-touch-icon.png') }}" rel="apple-touch-icon">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <link href="{{ asset('./backend/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('./backend/assets/vendor/bootstrap/css/active.css') }}" rel="stylesheet">
  <link href="{{ asset('./backend/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
  <link href="{{ asset('./backend/assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
  <link href="{{ asset('./backend/assets/vendor/quill/quill.snow.css') }}" rel="stylesheet">
  <link href="{{ asset('./backend/assets/vendor/quill/quill.bubble.css') }}" rel="stylesheet">
  <link href="{{ asset('./backend/assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
  <link href="{{ asset('./backend/assets/vendor/simple-datatables/style.css') }}" rel="stylesheet">
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <link href="{{ asset('./backend/assets/css/style.css') }}" rel="stylesheet">
  <script src="{{ asset('./backend/assets/js/jquery.min.js') }}"></script>
  <script src="{{ asset('./excel/excel.js') }}"></script>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap');
    body {
        font-family: 'Roboto Slab', sans-serif !important;
    }
</style>

@yield('css')
</head>
<body>
@include('firma.layouts.header')
@include('firma.layouts.aside')
<main id="main" class="main">
    @yield('content')
</main><!-- End #main -->

@include('firma.layouts.footer')

@include('firma.layouts.script')
</body>
</html>