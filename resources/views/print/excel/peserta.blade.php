<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>No</th>
            <th>Lokasi</th>
            <th>Sesi</th>
            <th>Waktu Pelaksanaan</th>
            <th>NIK</th>
            <th>Nama Lengkap</th>
            <th>Alamat</th>
            <th>Email</th>
            <th>No Handphone</th>
            <th>Waktu Registrasi</th>
        </tr>
        @foreach ($datas as $data)    
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $data->jadwal->lokasi->name }}</td>
                <td>{{ $data->jadwal->nama_sesi }}</td>
                <td>{{ formatTanggalIndonesia($data->jadwal->tanggal) }}, {{ date('H:i', strtotime($data->jadwal->tanggal)) }} WIB</td>
                <td>{{ strval("'".$data->nik) }}</td>
                <td>{{ $data->nama_lengkap }}</td>
                <td>{{ $data->alamat }}</td>
                <td>{{ $data->email }}</td>
                <td>{{ $data->no_hp }}</td>
                <td>{{ formatTanggalIndonesia($data->created_at) }}, {{ date('H:i', strtotime($data->created_at)) }} WIB</td>
            </tr>
        @endforeach
    </table>
</body>
</html>