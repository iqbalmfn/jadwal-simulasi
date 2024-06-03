<?php

function formatTanggalIndonesia($tanggal)
{
    $bulan = [
        1 => 'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    ];

    $tanggal = \Carbon\Carbon::parse($tanggal);
    $hari = $tanggal->day;
    $bulan = $bulan[$tanggal->month];
    $tahun = $tanggal->year;

    return "$hari $bulan $tahun";
}
