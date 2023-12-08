@extends('template.layout')

@section('content')
<form action="" method="post"></form>
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<div class="page-title-breadcrumb">
				<div class=" pull-left">
					<div class="page-title">Tambah Jadwal</div>
				</div>
				<ol class="breadcrumb page-breadcrumb pull-right">
					<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="{{ route('dashboard') }}">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
					<li><a class="parent-item" href="{{ route('matapelajaran5') }}">Jadwal Kelas</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li><a class="parent-item" href="{{ route('matapelajaran5') }}">Kelas 5</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li class="active">Tambah Mapel</li>
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
					<form action="/insertdata5" method="post" enctype="multipart/form-data">
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
															<legend>Masukkan Mata Pelajaran</legend>
															<div class="form-group">
																<label class="control-label col-sm-2" for="hari">Hari</label>
																<div class="col-sm-6">
																	<select class="form-control @error('hari') is-invalid @enderror" id="hari" name="hari">
																		<option value="" disabled selected>Pilih Hari</option>
																		<option value="Senin" {{ old('hari') == 'Senin' ? 'selected' : '' }}>Senin</option>
																		<option value="Selasa" {{ old('hari') == 'Selasa' ? 'selected' : '' }}>Selasa</option>
																		<option value="Rabu" {{ old('hari') == 'Rabu' ? 'selected' : '' }}>Rabu</option>
																		<option value="Kamis" {{ old('hari') == 'Kamis' ? 'selected' : '' }}>Kamis</option>
																		<option value="Jumat" {{ old('hari') == 'Jumat' ? 'selected' : '' }}>Jumat</option>
																		<option value="Sabtu" {{ old('hari') == 'Sabtu' ? 'selected' : '' }}>Sabtu</option>
																	</select>
																	@error('hari')
																	<div class="alert alert-danger my-3 col-sm-6" role="alert">
																		{{ $message }}
																	</div>
																	@enderror
																</div>
															</div>
															<div class="form-group">
																<label class="control-label col-sm-2" for="matapelajaran">Mata Pelajaran</label>
																<div class="col-sm-6">
																	<select class="form-control @error('matapelajaran') is-invalid @enderror" id="matapelajaran" name="matapelajaran">
																		<option value="" disabled selected>Pilih Pelajaran</option>
																		@foreach ($jadwal5 as $rowkelas5)
																		<option value="{{ $rowkelas5->nama_matapelajaran }}">{{ $rowkelas5->nama_matapelajaran }}</option>
																		@endforeach
																	</select>
																	@error('matapelajaran')
																	<div class="alert alert-danger my-3 col-sm-6" role="alert">
																		{{ $message }}
																	</div>
																	@enderror
																</div>
															</div>
															<div class="form-group">
																<label class="control-label col-sm-2" for="waktu_pelajaran">Waktu</label>
																<div class="col-sm-6">
																	<select class="form-control @error('waktu_pelajaran') is-invalid @enderror" id="waktu_pelajaran" name="waktu_pelajaran">
																		<option value="" disabled selected>Pilih Waktu Pelajaran</option>
																		<option value="08.00-08.35" {{ old('waktu_pelajaran') == '08.00-08.35' ? 'selected' : '' }}>08.00-08.35</option>
																		<option value="08.35-09.10" {{ old('waktu_pelajaran') == '08.35-09.10' ? 'selected' : '' }}>08.35-09.10</option>
																		<option value="09.10-10.45" {{ old('waktu_pelajaran') == '09.10-10.45' ? 'selected' : '' }}>09.10-10.45</option>
																		<option value="09.45-10.15" {{ old('waktu_pelajaran') == '09.45-10.15' ? 'selected' : '' }}>09.45-10.15</option>
																		<option value="10.15-10.50" {{ old('waktu_pelajaran') == '10.15-10.50' ? 'selected' : '' }}>10.15-10.50</option>
																		<option value="10.50-11.25" {{ old('waktu_pelajaran') == '10.50-11.25' ? 'selected' : '' }}>10.50-11.25</option>
																		<option value="11.25-12.00" {{ old('waktu_pelajaran') == '11.25-12.00' ? 'selected' : '' }}>11.25-12.00</option>
																		<option value="12.00-12.35" {{ old('waktu_pelajaran') == '12.00-12.35' ? 'selected' : '' }}>12.00-12.35</option>
																	</select>
																	@error('waktu_pelajaran')
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
                    text: "Jadwal Kelas 5 Berhasil Ditambahkan!",
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