@extends('firma.layouts.main');
@section('content')
<section class="section dashboard">
    <div class="row">
        <div class="card">
            <div class="card-body">
                <div class="mb-5">
                    <div class="float-start">
                        <h5 class="card-title">Guruhlar</h5>
                    </div>
                    <p></p>
                    <button type="button"  class="btn btn-success float-end"  data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="bi bi-plus-square-dotted"></i></button>
                </div>
                <input type="text" class="form-control"  name="karobka" id="myInput2" onkeyup="searchtable('myInput2','oldtable')" placeholder="Qidirish"><br>
      <!-- Left side columns -->

                <div class="col-lg-8">
                    <div class="row">
                        @foreach ($groups as $item)
                        <div class="col-xxl-4 col-md-6">
                            <div class="card info-card revenue-card">
                                <div class="card-body">
                                <h5 class="card-title">Dastur: <span>| </span></h5>

                                <div class="d-flex align-items-center">
                                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                        <i class="bi bi-currency-dollar"></i>
                                    </div>
                                    <div class="ps-3">
                                    <h6>{{ $item->name }}</h6>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <form action="{{route('admin.groups.store')}}" method="POST">
            @csrf
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel2">Guruh Yaratish</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row mb-3">

                    <div class="col-sm-12">
                        <select class="form-select"  aria-label="multiple select example" name="course_id"  required>
                            <option value="" disabled selected>Kurs Tanlang</option>
                            @foreach($cources as $type)
                                <option value="{{ $type['id'] }}"> {{$type['name']}} </option>
                            @endforeach
                        </select>
                    </div>
                    <p></p>

                    <div class="col-sm-12">
                        <input type="text" class="form-control" placeholder="Guruh Nomi"  name="name"   required>
                    </div>
                    <p></p>

                    <div class="col-sm-12">
                        <input type="date" class="form-control" placeholder="Kursda nimalar o'rgatiladi"  name="start"   required>
                    </div>
                    <p>Guruhning Boshlanish Vaqti</p>

                    <div class="col-sm-12">
                        <input type="date" class="form-control" placeholder="Kursda nimalar o'rgatiladi"  name="end"   required>
                    </div>
                    <p>Guruhning Tugash Vaqti</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Yopish</button>
                <button type="submit" class="btn btn-primary">Saqlash</button>
            </div>
        </form>
        </div>
        </div>
    </div>
</section>

@endsection
<script>
    function searchtable(value1,value2) {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById(value1);
        filter = input.value.toUpperCase();
        table = document.getElementById(value2);
        tr = table.getElementsByTagName("tr");
        for (i = 1; i <tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
            }
        }
    }
    </script>
