<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $title }}</title>

    <style>
        .header-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .header-table td {
            padding: 5px;
        }

        .header-table .left {
            text-align: left;
        }

        .header-table .right {
            text-align: right;
        }

        .qr-code {
            position: fixed;
            bottom: 370px;
            right: -70px;
            width: 250px;
            height: auto;
        }
    </style>
</head>

<body>
    <div style="border-bottom: 2px solid black; padding-bottom:-10px;">
        <table class="header-table">
            <tr>
                <td class="left">
                    <img src="{{ public_path('assets/images/KANREG3-BKN-1-kecil.png') }}" alt="logo"
                        style="width:150px;">
                </td>
                <td class="right">
                    <span style="font-size:25px;">BUKTI REGISTRASI SIMULASI CAT</span>
                </td>
            </tr>
        </table>
    </div>
    <div style="margin-top:20px;border-bottom: 2px solid black; padding-bottom:20px;">
        <table width="100%" cellpadding="5" cellspacing="5">
            <tr>
                <th style="font-size:18px;" width="30%" align="left">NIK</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ $data->nik }}</td>
            </tr>
            <tr>
                <th style="font-size:18px;" width="30%" align="left">Nama Lengkap</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ $data->nama_lengkap }}</td>
            </tr>
            <tr>
                <th style="font-size:18px;" width="30%" align="left">Alamat Lengkap</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ $data->alamat }}</td>
            </tr>
            <tr>
                <th style="font-size:18px;" width="30%" align="left">Email</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ $data->email }}</td>
            </tr>
            <tr>
                <th style="font-size:18px;" width="30%" align="left">No. Handphone</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ $data->no_hp }}</td>
            </tr>
            <tr>
                <th style="font-size:18px;" width="30%" align="left">Titik Lokasi</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ $data->jadwal->lokasi->name }}</td>
            </tr>
            <tr>
                <th style="font-size:18px;" width="30%" align="left">Tanggal Simulasi</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ formatTanggalIndonesia($data->jadwal->tanggal) }}</td>
            </tr>
            <tr>
                <th style="font-size:18px;" width="30%" align="left">Sesi</th>
                <td style="font-size:18px;" width="3%">:</td>
                <td style="font-size:18px;">{{ $data->jadwal->nama_sesi }}</td>
            </tr>
        </table>
    </div>

    <div class="qr-code">
        <span style="font-size:15px;">{{ $tanggal }}</span>
        <div style="margin-top:10px;">{!! $qrcode !!}</div>
    </div>
</body>

</html>
