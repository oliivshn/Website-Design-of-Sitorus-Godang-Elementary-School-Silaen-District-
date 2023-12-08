@extends('template.layout')

@section('content')
<form action="" method="post"></form>
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<div class="page-title-breadcrumb">
				<div class=" pull-left">
					<div class="page-title">Ubah Mata Pelajaran</div>
				</div>
				<ol class="breadcrumb page-breadcrumb pull-right">
					<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="{{ route('dashboard') }}">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
					<li><a class="parent-item" href="{{ route('matapelajaran3') }}">Jadwal Kelas</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li><a class="parent-item" href="{{ route('matapelajaran3') }}">Kelas 3</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li class="active">Ubah Mapel</li>
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
					<form action="{{ url('update-murid3', $murid3->id) }}" method="post" enctype="multipart/form-data">
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
																		<option value="Senin" {{ $murid3->hari == 'Senin' ? 'selected' : '' }}>Senin</option>
																		<option value="Selasa" {{ $murid3->hari == 'Selasa' ? 'selected' : '' }}>Selasa</option>
																		<option value="Rabu" {{ $murid3->hari == 'Rabu' ? 'selected' : '' }}>Rabu</option>
																		<option value="Kamis" {{ $murid3->hari == 'Kamis' ? 'selected' : '' }}>Kamis</option>
																		<option value="Jumat" {{ $murid3->hari == 'Jumat' ? 'selected' : '' }}>Jumat</option>
																		<option value="Sabtu" {{ $murid3->hari == 'Sabtu' ? 'selected' : '' }}>Sabtu</option>
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
																		@foreach ($jadwaledit3 as $rowkelas3)
																		<option value="{{ $rowkelas3->nama_matapelajaran }}" {{ $murid3->matapelajaran == $rowkelas3->nama_matapelajaran ? 'selected' : '' }}>{{ $rowkelas3->nama_matapelajaran }}</option>
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
																		<option value="08.00-08.35" {{ $murid3->waktu_pelajaran == '08.00-08.35' ? 'selected' : '' }}>08.00-08.35</option>
																		<option value="08.35-09.10" {{ $murid3->waktu_pelajaran == '08.35-09.10' ? 'selected' : '' }}>08.35-09.10</option>
																		<option value="09.10-10.45" {{ $murid3->waktu_pelajaran == '09.10-10.45' ? 'selected' : '' }}>09.10-10.45</option>
																		<option value="09.45-10.15" {{ $murid3->waktu_pelajaran == '09.45-10.15' ? 'selected' : '' }}>09.45-10.15</option>
																		<option value="10.15-10.50" {{ $murid3->waktu_pelajaran == '10.15-10.50' ? 'selected' : '' }}>10.15-10.50</option>
																		<option value="10.50-11.25" {{ $murid3->waktu_pelajaran == '10.50-11.25' ? 'selected' : '' }}>10.50-11.25</option>
																		<option value="11.25-12.00" {{ $murid3->waktu_pelajaran == '11.25-12.00' ? 'selected' : '' }}>11.25-12.00</option>
																		<option value="12.00-12.35" {{ $murid3->waktu_pelajaran == '12.00-12.35' ? 'selected' : '' }}>12.00-12.35</option>
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
			var form = this;
			swal({
				title: "Berhasil",
				text: "Jadwal Kelas 3 Berhasil Diperbaharui!",
				icon: "success",
			}).then(function() {
				form.submit();
			});
		});
	});
</script>
@endsection