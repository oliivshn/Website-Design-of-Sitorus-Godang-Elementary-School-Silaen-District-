@extends('template.layout')

@section('content')
<style>
    /* Styling untuk gambar dengan kalimat */
    .image-with-caption {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        margin: 20px;
    }

    .image-with-caption img {
        max-width: 100%;
        height: auto;
        object-fit: cover;
        margin-bottom: 10px;
    }

    .image-caption {
        font-size: 14px;
        color: #666;
    }

    .carousel-button-prev:before,
    .carousel-button-next:before {
        content: "";
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 12px;
        height: 12px;
        border-top: 2px solid white;
        border-right: 2px solid white;
    }

    .carousel-button-next:before {
        transform: translate(-50%, -50%) rotate(45deg);
    }

    .carousel-button-prev:before {
        transform: translate(-50%, -50%) rotate(-135deg);
    }

    h3 {
        text-align: center;
        font-size: 36px;
        font-weight: bold;
    }

    .grid-container {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 20px;
    }

    .grid-item {
        border: 1px solid #ccc;
        padding: 10px;
    }

    .description {
        grid-column: 1 / span 1;
    }

    .image-with-caption {
        text-align: center;
        margin-top: 20px;
    }

    .image-with-caption img {
        max-width: 100%;
        height: auto;
    }

    .image-caption {
        margin-top: 10px;
        font-style: italic;
    }

    .btn-group {
        margin-top: 10px;
    }
</style>
<div class="page-content-wrapper">
    <div class="page-content">
        <div class="page-bar">
            <div class="page-title-breadcrumb">
                <div class=" pull-left">
                    <div class="page-title" style="text-align: center;">Dashboard</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="{{ route('dashboard') }}">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </div>
        <div class="state-overview">
            <div class="row">
                <div class="col-xl-3 col-md-6 col-12">
                    <div class="info-box bg-b-green">
                        <span class="info-box-icon push-bottom"><i data-feather="users"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Total Siswa</span>
                            @php
                            use Illuminate\Support\Facades\DB;
                            $siswaCount = DB::table('users')
                            ->where('role', 'user')
                            ->count();
                            @endphp

                            <span class="info-box-number">{{ $siswaCount }}</span>
                            <div class="progress">
                                <div class="progress-bar" style="width: 45%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-xl-3 col-md-6 col-12">
                    <div class="info-box bg-b-yellow">
                        <span class="info-box-icon push-bottom"><i data-feather="user"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Total Guru</span>
                            @php
                            $guruCount = DB::table('users')
                            ->where('jabatan', 'Guru')
                            ->count();
                            @endphp

                            <span class="info-box-number">{{ $guruCount }}</span>
                            <div class="progress">
                                <div class="progress-bar" style="width: 40%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-xl-3 col-md-6 col-12">
                    <div class="info-box bg-b-blue">
                        <span class="info-box-icon push-bottom"><i data-feather="book"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Total Mata Pelajaran</span>
                            @php
                            $mapelCount = DB::table('mata_pelajaran')
                            ->select('nama_matapelajaran')
                            ->count();
                            @endphp

                            <span class="info-box-number">{{ $mapelCount }}</span>
                            <div class="progress">
                                <div class="progress-bar" style="width: 85%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-xl-3 col-md-6 col-12">
                    <div class="info-box bg-b-pink">
                        <span class="info-box-icon push-bottom"><i data-feather="layers"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Total Kelas</span>
                            <span class="info-box-number">6</span>
                            <div class="progress">
                                <div class="progress-bar" style="width: 50%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
            </div>
        </div>
        <!-- end widget -->
        <!-- Carousel Untuk Slide Konten -->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="../fotocarousel/welcome.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../fotocarousel/gambar1.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../fotocarousel/gambar2.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../fotocarousel/gambar3.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../fotocarousel/gambar4.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../fotocarousel/gambar5.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="../fotocarousel/gambar6.jpg" alt="Second slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="grid-container">
            <div class="grid-item description">
                @if (Auth::check() && Auth::user()->role == 'admin')
                <div class="btn-group" style="text-align: center;">
                    <a href="{{ route('tambahinformasi') }}" id="inform" class="btn btn-primary">
                        Tambah Informasi <i class="fa fa-plus"></i>
                    </a>
                </div>
                @endif
                <!-- Penjelasan -->
                <div class="description">
                    @foreach($informasis as $rowinformasi)
                    <h2 style="font-weight: bold;">{{ $rowinformasi->judul }}</h2>
                    <p>{!! nl2br(e($rowinformasi->latar_belakang)) !!}</p>
                    @if (Auth::check() && Auth::user()->role == 'admin')
                    <div class="btn-group">
                        <a href="{{ route('editinformasi', $rowinformasi->id) }}" id="inform" class="btn btn-success">
                            Edit Informasi <i class="fa fa-pencil"></i>
                        </a>
                    </div>
                    <div class="btn-group">
                        <a href="#" id="inform" class="btn btn-danger deletes" data-id="{{ $rowinformasi->id }}">
                            Hapus Informasi <i class="fa fa-trash"></i>
                        </a>
                    </div>
                    @endif
                    @endforeach
                </div>
            </div>

            <div class="grid-item image-with-caption">
                <!-- Gambar dengan kalimat -->
                @if (Auth::check() && Auth::user()->role == 'admin')
                <div class="btn-group">
                    <a href="{{ route('tambahstruktur') }}" id="addRow" class="btn btn-primary">
                        Tambah Struktur <i class="fa fa-plus"></i>
                    </a>
                </div>
                @endif
                @foreach ($tampilan as $row)
                <div class="image-with-caption">
                    <img src="{{ asset('fotostruktur/' . $row->gambar) }}">
                    <p class="image-caption">Struktur Organisasi</p>
                </div>
                @if (Auth::check() && Auth::user()->role == 'admin')
                <div class="btn-group">
                    <a href="{{ route('editstruktur', $row->id) }}" id="addRow" class="btn btn-success">
                        Edit Struktur <i class="fa fa-pencil"></i>
                    </a>
                </div>
                <div class="btn-group">
                    <a href="#" id="addRow" class="btn btn-danger delete" data-id="{{ $row->id }}">
                        Hapus Struktur <i class="fa fa-trash"></i>
                    </a>
                </div>
                @endif
                @endforeach
            </div>
        </div>

        <div class="card mt-5">
            <div class="card-head">
                <header>Jumlah Siswa SD Sitorus Godang</header>
                <div class="tools">
                    <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                    <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                    <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                </div>
            </div>
            <div class="card-body">
                <div class="recent-report__chart">
                    <div id="chart1"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.slim.js" integrity="sha256-dWvV84T6BhzO4vG6gWhsWVKVoa4lVmLnpBOZh/CAHU4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


<script>
    $(document).ready(function() {
        $('.carousel').carousel();
    });
</script>

<script>
    $('.deletes').click(function() {
        var informasiid = $(this).attr('data-id');
        swal({
                title: "Apakah Anda Yakin?",
                text: "Anda Akan Menghapus Informasi Tersebut",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    window.location = "/deleteinformasi/" + informasiid;
                    swal("Informasi Berhasil Dihapus", {
                        icon: "success",
                    });
                } else {
                    swal("Informasi Tidak Jadi Dihapus");
                }
            });
    });

    $('.delete').click(function() {
        var strukturid = $(this).attr('data-id');
        swal({
                title: "Apakah Anda Yakin?",
                text: "Anda Akan Menghapus Struktur Tersebut",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    window.location = "/deletestruktur/" + strukturid;
                    swal("Struktur Berhasil Dihapus", {
                        icon: "success",
                    });
                } else {
                    swal("Struktur Tidak Jadi Dihapus");
                }
            });
    });
</script>

<script>
    // Ambil elemen tombol "Tambah Struktur"
    const addRowButton = document.getElementById('addRow');

    // Periksa apakah ada gambar yang ditampilkan
    const images = document.querySelectorAll('.image-with-caption img');
    if (images.length > 0) {
        // Sembunyikan tombol "Tambah Struktur"
        addRowButton.style.display = 'none';
    }

    // Tambahkan event listener untuk tombol delete
    const deleteButtons = document.querySelectorAll('.delete');
    deleteButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault(); // Mencegah tindakan default (misalnya, mengikuti tautan)

            // Tampilkan SweetAlert untuk konfirmasi delete
            swal({
                title: 'Hapus Gambar',
                text: 'Apakah Anda yakin ingin menghapus gambar ini?',
                icon: 'warning',
                buttons: true,
                dangerMode: true,
            }).then((confirm) => {
                if (confirm) {
                    const strukturid = button.getAttribute('data-id');
                    window.location = '/deletestruktur/' + strukturid;
                    swal('Data Berhasil Dihapus', {
                        icon: 'success',
                    }).then(() => {
                        // Munculkan kembali tombol "Tambah Struktur" setelah menghapus gambar
                        addRowButton.style.display = 'inline-block';
                    });
                } else {
                    swal('Data Tidak Jadi Dihapus');
                }
            });
        });
    });

    // Fungsi untuk mengatur visibilitas button "Tambah Informasi"
    function toggleTambahInformasiButton() {
        // Mengambil elemen judul dan latar_belakang
        var judul = document.querySelector('.description h2');
        var latarBelakang = document.querySelector('.description p');

        // Mengambil elemen button "Tambah Informasi"
        var tambahInformasiButton = document.getElementById('inform');

        // Memeriksa apakah judul dan latar_belakang sudah terisi
        if (judul && latarBelakang && judul.textContent.trim() !== '' && latarBelakang.textContent.trim() !== '') {
            // Sembunyikan button "Tambah Informasi"
            tambahInformasiButton.style.display = 'none';
        } else {
            // Tampilkan button "Tambah Informasi"
            tambahInformasiButton.style.display = 'block';
        }
    }

    // Memanggil fungsi toggleTambahInformasiButton saat dokumen selesai dimuat
    document.addEventListener('DOMContentLoaded', toggleTambahInformasiButton);

    // Fungsi untuk menampilkan SweetAlert
    function showSweetAlert() {
        Swal.fire({
            title: 'Data berhasil dihapus',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then(function() {
            // Setelah menekan tombol OK pada SweetAlert, tampilkan kembali button "Tambah Informasi"
            var tambahInformasiButton = document.getElementById('inform');
            tambahInformasiButton.style.display = 'block';
        });
    }

    // Menambahkan event listener pada elemen button "Hapus Informasi"
    var deletesButtons = document.getElementsByClassName('deletes');
    for (var i = 0; i < deleteButtons.length; i++) {
        deleteButtons[i].addEventListener('click', function() {
            // Memanggil fungsi showSweetAlert saat button "Hapus Informasi" ditekan
            showSweetAlert();
        });
    }
</script>

@endsection

@push('scripts')
<script>
    function chart1() {
        var options = {
            series: [{
                name: "Jumlah Siswa",
                data: @json($data)
            }],
            chart: {
                height: 350,
                type: 'line',
                zoom: {
                    enabled: false
                }
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                curve: 'straight'
            },
            grid: {
                row: {
                    colors: ['#f3f3f3', 'transparent'],
                    opacity: 0.5
                },
            },
            xaxis: {
                categories: @json($categories)
            }
        };

        var chart = new ApexCharts(document.querySelector("#chart1"), options);
        chart.render();

    }

    chart1();
</script>
@endpush