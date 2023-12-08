<!DOCTYPE html>
<html>

<head>
	<title></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body>
	<h3 style="text-align: center;">Jadwal Mata Pelajaran Kelas 5</h3>
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
			foreach($data5 as $rowkelas5) {
			$hariData[$rowkelas5->hari][] = $rowkelas5;
			}
			$maxRows = count($data5) > 0 ? max(array_map('count', $hariData)) : 0;
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
					@endif
				</td>
				@endforeach
				</tr>
				@php $counter++; @endphp
				@endfor
		</tbody>
	</table>
</body>

</html>