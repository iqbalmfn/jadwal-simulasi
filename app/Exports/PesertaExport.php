<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;

class PesertaExport implements FromCollection, WithHeadings, WithMapping, WithColumnFormatting
{
    protected $datas;
    private $rowNumber = 0;

    public function __construct($datas)
    {
        $this->datas = $datas;
    }

    public function collection()
    {
        return $this->datas;
    }

    public function headings(): array
    {
        return [
            'No',
            'Lokasi',
            'Sesi',
            'Waktu Pelaksanaan',
            'NIK',
            'Nama Lengkap',
            'Alamat',
            'Email',
            'No Handphone',
            'Waktu Registrasi'
            // Add other headers if needed
        ];
    }

    public function map($data): array
    {
        $this->rowNumber++;

        return [
            $this->rowNumber,
            $data->nama_lengkap,
            $data->jadwal->nama_sesi,
            formatTanggalIndonesia($data->jadwal->tanggal).','. date('H:i', strtotime($data->jadwal->tanggal)).' WIB',
            "'".$data->nik,
            $data->nama_lengkap,
            $data->alamat,
            $data->email,
            $data->no_hp,
            formatTanggalIndonesia($data->created_at).','. date('H:i', strtotime($data->created_at)).' WIB'
        ];
    }

    public function columnFormats(): array
    {
        return [
            'E' => NumberFormat::FORMAT_TEXT, // Kolom C yang berisi NIK diatur ke format teks
        ];
    }
}