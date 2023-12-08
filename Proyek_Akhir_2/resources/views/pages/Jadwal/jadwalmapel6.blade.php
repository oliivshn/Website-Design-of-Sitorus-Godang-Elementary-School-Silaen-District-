@extends('template.layout')

@section('content')
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<div class="page-title-breadcrumb">
				<div class=" pull-left">
					<div class="page-title">Jadwal Mapel Setiap Kelas</div>
				</div>
				<ol class="breadcrumb page-breadcrumb pull-right">
					<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="{{ route('dashboard') }}">Dashboard</a>&nbsp;<i class="fa fa-angle-right"></i>
					<li><a class="parent-item" href="{{ route('matapelajaran') }}">Jadwal Kelas</a>&nbsp;<i class="fa fa-angle-right"></i>
					</li>
					<li class="active">Kelas 6</li>
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
					<ul class="nav customtab nav-tabs" role="tablist">
						<li class="nav-item"><a href="#tab2" class="nav-link active" data-bs-toggle="tab">Kelas
								6</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active fontawesome-demo" id="tab6">
							<div class="row">
								<div class="col-md-12">
									<div class="card card-box">
										<div class="card-head">
											<header>Kelas 6</header>
											<div class="tools">
												<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
												<a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
												<a class="t-close btn-color fa fa-times" href="javascript:;"></a>
											</div>
										</div>
										<div class="card-body ">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-6">
													@auth
													@if(Auth::check() && Auth::user()->role == 'admin')
													<div class="btn-group">
														<a href="/tambahkelas6" id="addRow" class="btn btn-primary">
															Tambah Jadwal <i class="fa fa-plus"></i>
														</a>
													</div>
													@endif
													<div class="btn-group">
														<a href="/exportpdfjadwal6" id="addRow" class="btn btn-danger">
															Ekspor PDF <i class="fa-solid fa-file-pdf"></i>
														</a>
													</div>
													@endauth
												</div>
											</div>
											<br>
											<table class="table table-striped table-bordered table-hover table-checkable order-column valign-middle" id="example4">
												<thead>
													<tr>
														<th style="text-align: center; width: 5%;">No</th>
														<th style="text-align: center; width: 17%;">Senin</th>
														<th style="text-align: center;">Selasa</th>
														<th style="text-align: center;">Rabu</th>
														<th style="text-align: center;">Kamis</th>
														<th style="text-align: center;">Jumat</th>
														<th style="text-align: center;">Sabtu</th>
													</tr>
												</thead>
												<tbody>
													@php
													$hariData = [];
													$counter = 1;
													foreach($data6 as $rowkelas6) {
													$hariData[$rowkelas6->hari][] = $rowkelas6;
													}
													$maxRows = count($data6) > 0 ? max(array_map('count', $hariData)) : 0;
													@endphp

													@for ($i = 0; $i < $maxRows; $i++) <tr>
														<td style="text-align: center;">{{ $counter }}</td>
														@foreach(['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'] as $hari)
														@php
														$rowData = isset($hariData[$hari][$i]) ? $hariData[$hari][$i] : null;
														@endphp
														<td style="text-align: center;">
															@if ($rowData)
															{{ $rowData->matapelajaran }} <br>
															{{ $rowData->waktu_pelajaran }}
															<br>
															@if (Auth::check() && Auth::user()->role == 'admin')
															<a href="{{ url('edit-murid6', $rowData->id) }}" class="btn btn-sm btn-outline-success" title="Edit">
																<i class="fa fa-pencil"></i>
															</a>
															<a href="#" class="btn btn-sm btn-outline-danger delete" title="Delete" data-id="{{ $rowData->id }}">
																<i class="fa fa-trash"></i>
															</a>
															@endif
															@endif
														</td>
														@endforeach
														</tr>
														@php $counter++; @endphp
														@endfor
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.slim.js" integrity="sha256-dWvV84T6BhzO4vG6gWhsWVKVoa4lVmLnpBOZh/CAHU4=" crossorigin="anonymous"></script>

<script>
	$('.delete').click(function() {
		var kelas6id = $(this).attr('data-id');
		swal({
				title: "Apakah Anda Yakin?",
				text: "Anda Akan Menghapus Jadwal Kelas 6",
				icon: "warning",
				buttons: true,
				dangerMode: true,
			})
			.then((willDelete) => {
				if (willDelete) {
					window.location = "/delete6/" + kelas6id;
					swal("Data Berhasil Dihapus", {
						icon: "success",
					});
				} else {
					swal("Data Tidak Jadi Dihapus");
				}
			});
	});
</script>


@endsection