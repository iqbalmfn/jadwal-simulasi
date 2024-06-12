<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use GuzzleHttp\Exception\RequestException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class ProxyController extends Controller
{
    public function proxy(Request $request, $path)
    {
        $client = new Client(['allow_redirects' => false]);
        $method = $request->getMethod();
        $url = 'https://simulasicat-kanreg3bkn.site/' . $path;

        try {
            $options = [
                'query' => $request->query(),
                'headers' => $request->headers->all(),
                'timeout' => 10, // set timeout for the request
            ];

            if ($method !== 'GET') {
                $options['form_params'] = $request->all();
            }

            $response = $client->request($method, $url, $options);

            if ($response->getStatusCode() == 302) {
                $redirectUrl = $response->getHeaderLine('Location');
                return redirect($redirectUrl);
            }

            return response($response->getBody()->getContents(), $response->getStatusCode())
                ->header('Content-Type', $response->getHeaderLine('Content-Type'));
        } catch (RequestException $e) {
            Log::error('Proxy error: ' . $e->getMessage());
            return response()->json(['error' => 'Something went wrong!'], 500);
        }
    }
}
