<?php

namespace App\Http\Controllers;

use App\Models\Biodata;
use App\Models\Location;
use App\Models\Period;
use App\Models\Schedule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Mpdf\Mpdf;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class PendaftaranController extends Controller
{
    public function pilihLokasi(Request $request)
    {
        // cek periode aktif
        $checkPeriod = $this->checkPeriodeAktif($request->period_id);

        if (!$checkPeriod) {
            return redirect()->back();
        } else {
            session(['period_id' => $request->period_id]);
            session(['location_id' => $request->location_id]);

            return redirect()->route('pendaftaran.index');
        }
    }

    public function index()
    {
        $session = [
            'period_id' => session('period_id'),
            'location_id' => session('location_id')
        ];

        // cek periode aktif
        $checkPeriod = $this->checkPeriodeAktif($session['period_id']);

        if (!$checkPeriod) {
            return redirect()->route('enduser.index');
        } else {
            if (!isset($session['period_id']) && !isset($session['location_id'])) {
                return redirect()->route('enduser.index');
            } else {
                // baca data apakah sudah mendaftar atau belum
                $peserta = Biodata::query()
                    ->whereId(session('id'))
                    ->first();

                if ($peserta) {
                    return redirect()->route('pendaftaran.success', ['id' => $peserta->id]);
                } else {
                    // baca titik lokasi
                    $lokasi = Location::find($session['location_id']);

                    $dates = Schedule::query()
                        ->whereHas('periode', function ($query) use ($session) {
                            $query->where('id', $session['period_id']);
                        })
                        ->with(['periode', 'lokasi'])
                        ->where('location_id', $session['location_id'])
                        ->select(
                            'schedules.*', 
                            DB::raw('DATE_FORMAT(tanggal, "%Y-%m-%d") as formatted_date')
                        )
                        ->where('location_id', $session['location_id'])
                        ->groupBy(DB::raw('DATE_FORMAT(tanggal, "%Y-%m-%d")'))
                        ->orderBy('formatted_date')
                        ->get();

                    return view('enduser.pendaftaran.index', [
                        'dates'     => $dates,
                        'lokasi'    => $lokasi,
                        'period'    => $checkPeriod
                    ]);
                }
            }
        }
    }

    public function form($id)
    {
        $schedule = Schedule::query()
            ->whereId($id)
            ->with(['periode', 'lokasi', 'peserta'])
            ->first();

        return view('enduser.pendaftaran.form', [
            'schedule' => $schedule
        ]);
    }

    public function store(Request $request)
    {
        // baca schedule
        $schedule = Schedule::query()
            ->whereId($request->schedule_id)
            ->with(['peserta'])
            ->first();

        // validasi input
        $request->validate([
            'schedule_id'   => 'required|numeric',
            'nik'           => [
                'required',
                'numeric',
                'digits:16',
                function ($attribute, $value, $fail) use ($schedule) {
                    // Periksa apakah ada NIK yang sama dalam tabel biodatas dengan periode_id yang sama
                    $exists = DB::table('biodatas')
                        ->join('schedules', 'biodatas.schedule_id', '=', 'schedules.id')
                        ->where('biodatas.nik', $value)
                        ->where('schedules.period_id', $schedule->period_id)
                        ->exists();

                    if ($exists) {
                        $fail('NIK sudah ada untuk periode yang sama.');
                    }
                },
            ],
            'nama_lengkap'  => 'required',
            'alamat'        => 'required',
            'email'         => 'required|email',
            'no_hp'         => 'required|numeric',
        ]);

        $input = $request->all();
        $input['ip'] = $request->ip();

        if ($schedule->kuota <= $schedule->peserta->count()) {
            Session::flash('error', 'Jumlah peserta sudah penuh');

            return redirect()->back();
        } else {
            $peserta = Biodata::create($input);

            session(['id' => $peserta->id]);

            Session::flash('success', 'Anda berhasil mendaftar');

            return redirect()->route('pendaftaran.success', ['id' => $peserta->id]);
        }
    }

    public function success($id)
    {
        // baca data biodata pendaftaran
        $data = Biodata::query()
            ->with('jadwal.lokasi')
            ->whereId($id)
            ->first();

        return view('enduser.pendaftaran.success', [
            'data' => $data
        ]);
    }

    public function print($id)
    {
        // Baca data biodata pendaftaran
        $data = Biodata::with('jadwal.lokasi')->find($id);

        // Jika data tidak ditemukan
        if (!$data) {
            return redirect()->back()->with('error', 'Data tidak ditemukan');
        }

        // cetak QRCode
        $qrcode = QrCode::encoding('UTF-8')->size(150)->generate(route('verifikasi.index', ['id' => $data->id]));
        //replace to empty
        $qrcode = str_replace('<?xml version="1.0" encoding="UTF-8"?>', "", $qrcode); 

        if (strpos($data->jadwal->lokasi->name, "Bandung") !== false) {
            $tanggal = "Bandung, " . formatTanggalIndonesia($data->created_at);
        } else {
            $tanggal = "Serang, " . formatTanggalIndonesia($data->created_at);
        }

        // Render view menjadi HTML
        $html = view('print.pdf.pendaftaran', [
            'title' => $data->nik . '_BuktiPendaftaran',
            'data' => $data,
            'qrcode' => $qrcode,
            'tanggal' => $tanggal
        ])->render();

        // Buat instance mPDF
        $mpdf = new Mpdf();

        // Tambahkan HTML ke mPDF
        $mpdf->WriteHTML($html);

        // Output PDF
        return response($mpdf->Output($data->nik . '_BuktiPendaftaran.pdf', 'I'), 200)
            ->header('Content-Type', 'application/pdf');
    }

    public function verifikasi($id)
    {
        // Baca data biodata pendaftaran
        $data = Biodata::with('jadwal.lokasi')->find($id);

        return view('enduser.verifikasi', [
            'data' => $data
        ]);
    }

    public function cetak(Request $request) {
        // cek periode aktif
        $period = Period::query()
            ->whereIsActive(1)
            ->first();

        if ($period) {
            $peserta = Biodata::query()
                ->whereNik($request->nik)
                ->whereHas('jadwal', function ($query) use ($period) {
                    $query->wherePeriodId($period->id);
                })
            ->first();

            if ($peserta) {
                return redirect()->route('pendaftaran.print', ['id' => $peserta->id]);
            } else {
                Session::flash('error', 'NIK tidak terdaftar');
                return redirect()->back();
            }
        }

    }
}
