@extends('template.layout')

@section('content')
<form action="" method="post"></form>
<div class="page-content-wrapper">
    <div class="page-content">
        <div class="page-bar">
            <div class="page-title-breadcrumb">
                <div class=" pull-left">
                    <div class="page-title">Tambah Siswa</div>
                </div>
                <ol class="breadcrumb page-breadcrumb pull-right">
                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="{{ route('dashboard') }}">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li><a class="parent-item" href="{{ route('dashboard') }}">Siswa</a>&nbsp;<i class="fa fa-angle-right"></i>
                    </li>
                    <li class="active">Tambah Siswa</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="tabbable-line">
                    <!-- <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#tab1" data-bs-toggle="tab"> List View </a>
                                    </li>
                                    <li>
                                        <a href="#tab2" data-bs-toggle="tab"> Grid View </a>
                                    </li>
                                </ul> -->
                    <form action="{{ route('menambahsiswa') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="tab-content">
                            <div class="tab-pane active fontawesome-demo" id="tab1">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card card-box">
                                            <div class="card-head">
                                                <div class="tools">
                                                    <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                                    <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                                    <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                                </div>
                                            </div>
                                            <div class="card-body ">
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-6 col-6">
                                                    </div>
                                                </div>
                                            </div>
                                            <table class="table table-striped table-bordered table-hover table-checkable order-column valign-middle" id="example4">
                                                <div class="container">
                                                    <form class="form-horizontal">
                                                        <fieldset>
                                                            <legend>Data Siswa</legend>
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-2" for="username">Nama Lengkap</label>
                                                                <div class="col-sm-6">
                                                                    <input type="text" name="username" id="username" class="form-control" placeholder="Masukkan Nama Anda" value="{{ old('username') }}">
                                                                    @error('username')
                                                                    <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                        {{ $message }}
                                                                    </div>
                                                                    @enderror
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-2" for="nisn">NISN</label>
                                                                <div class="col-sm-6">
                                                                    <input type="text" name="nisn" id="nisn" class="form-control" placeholder="Masukkan NISN" value="{{ old('nisn') }}">
                                                                    @error('nisn')
                                                                    <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                        {{ $message }}
                                                                    </div>
                                                                    @enderror
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-2" for="no_telepon">Nomor Telepon</label>
                                                                <div class="col-sm-6">
                                                                    <input type="text" name="no_telepon" id="no_telepon" class="form-control" placeholder="Masukkan Nomor Telepon" value="{{ old('no_telepon') }}">
                                                                    @error('no_telepon')
                                                                    <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                        {{ $message }}
                                                                    </div>
                                                                    @enderror
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="control-label col-sm-2" for="jenis_kelamin">Jenis Kelamin</label>
                                                                <div class="col-sm-6">
                                                                    <select class="form-control @error('jenis_kelamin') is-invalid @enderror" id="jenis_kelamin" name="jenis_kelamin">
                                                                        <option value="" disabled selected>Pilih Jenis Kelamin</option>
                                                                        <option value="Laki-Laki" {{ old('Laki-Laki') == 'Laki-Laki' ? 'selected' : '' }}>Laki-Laki</option>
                                                                        <option value="Perempuan" {{ old('Perempuan') == 'Perempuan' ? 'selected' : '' }}>Perempuan</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-sm-2" for="tgl_lahir">Tanggal Lahir</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="date" name="tgl_lahir" id="tgl_lahir" class="form-control" value="{{ old('tgl_lahir') }}">
                                                                        @error('tgl_lahir')
                                                                        <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                            {{ $message }}
                                                                        </div>
                                                                        @enderror
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-sm-2" for="tpt_lahir">Tempat Lahir</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" name="tpt_lahir" id="tpt_lahir" class="form-control" placeholder="Masukkan Tempat Lahir" value="{{ old('tpt_lahir') }}">
                                                                        @error('tpt_lahir')
                                                                        <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                            {{ $message }}
                                                                        </div>
                                                                        @enderror
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-sm-2" for="kelas">Kelas Siswa</label>
                                                                    <div class="col-sm-6">
                                                                        <select class="form-control @error('kelas') is-invalid @enderror" id="kelas" name="kelas">
                                                                            <option value="" disabled selected>Pilih Kelas</option>
                                                                            <option value="Kelas 1" {{ old('kelas') == 'Kelas 1' ? 'selected' : '' }}>Kelas 1</option>
                                                                            <option value="Kelas 2" {{ old('kelas') == 'Kelas 2' ? 'selected' : '' }}>Kelas 2</option>
                                                                            <option value="Kelas 3" {{ old('kelas') == 'Kelas 3' ? 'selected' : '' }}>Kelas 3</option>
                                                                            <option value="Kelas 4" {{ old('kelas') == 'Kelas 4' ? 'selected' : '' }}>Kelas 4</option>
                                                                            <option value="Kelas 5" {{ old('kelas') == 'Kelas 5' ? 'selected' : '' }}>Kelas 5</option>
                                                                            <option value="Kelas 6" {{ old('kelas') == 'Kelas 6' ? 'selected' : '' }}>Kelas 6</option>
                                                                        </select>
                                                                        @error('kelas')
                                                                            <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                                {{ $message }}
                                                                            </div>
                                                                            @enderror
                                                                    </div>
                                                                <div class="form-group">
                                                                    <label class="control-label col-sm-2" for="agama">Agama</label>
                                                                    <div class="col-sm-6">
                                                                        <select class="form-control @error('agama') is-invalid @enderror" id="agama" name="agama">
                                                                            <option value="" disabled selected>Pilih Agama</option>
                                                                            <option value="Protestan" {{ old('Protestan') == 'Protestan' ? 'selected' : '' }}>Protestan</option>
                                                                            <option value="Katolik" {{ old('Katolik') == 'Katolik' ? 'selected' : '' }}>Katolik</option>
                                                                            <option value="Islam" {{ old('Islam') == 'Islam' ? 'selected' : '' }}>Islam</option>
                                                                            <option value="Hindu" {{ old('Hindu') == 'Hindu' ? 'selected' : '' }}>Hindu</option>
                                                                            <option value="Buddha" {{ old('Buddha') == 'Buddha' ? 'selected' : '' }}>Buddha</option>
                                                                            <option value="Konghucu" {{ old('Konghucu') == 'Konghucu' ? 'selected' : '' }}>Konghucu</option>
                                                                        </select>
                                                                        @error('agama')
                                                                            <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                                {{ $message }}
                                                                            </div>
                                                                            @enderror
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label col-sm-2" for="alamat">Alamat</label>
                                                                        <div class="col-sm-6">
                                                                            <input type="text" name="alamat" id="alamat" class="form-control" placeholder="Masukkan Alamat" value="{{ old('alamat') }}">
                                                                            @error('alamat')
                                                                            <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                                {{ $message }}
                                                                            </div>
                                                                            @enderror
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label col-sm-2" for="foto">Gambar</label>
                                                                        <div class="col-sm-6">
                                                                            <input id="password-confirm" type="file" name="foto" class="form-control" name="foto" autocomplete="new-password">
                                                                            @error('foto')
                                                                            <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                                {{ $message }}
                                                                            </div>
                                                                            @enderror
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label col-sm-2" for="password">Kata Sandi</label>
                                                                        <div class="col-sm-6">
                                                                            <input id="password" type="password" name="password" placeholder="Kata Sandi" class="form-control" name="password" autocomplete="new-password">
                                                                            @error('password')
                                                                            <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                                {{ $message }}
                                                                            </div>
                                                                            @enderror
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="control-label col-sm-2" for="password_confirmation">Konfirmasi Kata Sandi</label>
                                                                        <div class="col-sm-6">
                                                                            <input id="password-confirm" type="password" name="password_confirmation" class="form-control" placeholder="Konfirmasi Kata Sandi" name="password_confirmation" autocomplete="new-password">
                                                                            @error('password_confirmation')
                                                                            <div class="alert alert-danger my-3 col-sm-6" role="alert">
                                                                                {{ $message }}
                                                                            </div>
                                                                            @enderror
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-sm-offset-2 col-sm-10">
                                                                            <button type="submit" class="btn btn-success">Simpan</button>
                                                                            <button type="reset" class="btn btn-danger">Reset</button>
                                                                        </div>
                                                                    </div>
                                                        </fieldset>
                                                    </form>
                                                </div>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</form>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.slim.js" integrity="sha256-dWvV84T6BhzO4vG6gWhsWVKVoa4lVmLnpBOZh/CAHU4=" crossorigin="anonymous"></script>

<script>
    $(document).ready(function() {
        $('form').submit(function(e) {
            e.preventDefault();

            // Menghapus pesan error sebelumnya
            $('.alert').remove();

            // Memeriksa setiap input field
            var isValid = true;
            $('input, select').each(function() {
                if ($(this).val() === '') {
                    var fieldName = $(this).attr('name');
                    var errorMsg = 'Field ' + fieldName + ' harus diisi';
                    $(this).after('<div class="alert alert-danger">' + errorMsg + '</div>');
                    isValid = false;
                }
            });

            // Jika validasi berhasil, submit form
            if (isValid) {
                var form = this;
                swal({
                    title: "Berhasil",
                    text: "Siswa Berhasil Ditambahkan!",
                    icon: "success",
                }).then(function() {
                    form.submit();
                });
            } else {
                // Menampilkan SweetAlert bahwa validasi gagal
                swal({
                    title: "Validasi Gagal",
                    text: "Harap periksa kembali pengisian form",
                    icon: "error",
                });
            }
        });
    });
</script>
@endsection