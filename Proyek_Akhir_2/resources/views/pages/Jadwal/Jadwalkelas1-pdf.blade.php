<!DOCTYPE html>
<html>

<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body>
	<h3 style="text-align: center;">Jadwal Mata Pelajaran Kelas 1</h3>
	<br>
	<table class="table table-striped table-bordered table-hover table-checkable order-column valign-middle" id="example4">
		<thead>
			<tr>
				<th style="text-align: center;">No</th>
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
			$nomor = 1;
			foreach($data as $rowkelas1) {
			$hariData[$rowkelas1->hari][] = $rowkelas1;
			}
			$maxRows = count($data) > 0 ? max(array_map('count', $hariData)) : 0;
			@endphp

			@for ($i = 0; $i < $maxRows; $i++) <tr>
				<td style="text-align: center;">{{ $nomor++ }}</td>
				@foreach(['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'] as $hari)
				@php
				$rowData = isset($hariData[$hari][$i]) ? $hariData[$hari][$i] : null;
				@endphp
				<td style="text-align: center;">
					@if ($rowData)
					{{ $rowData->matapelajaran }} <br>
					{{ $rowData->waktu_pelajaran }}
					<br>
					@endif
				</td>
				@endforeach
				</tr>
				@endfor
		</tbody>
	</table>
</body>

</html>