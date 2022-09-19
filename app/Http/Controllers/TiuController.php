<?php

namespace App\Http\Controllers;

use App\Models\tiu_model;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\TiuResource;
use Illuminate\Support\Facades\Validator;
use DB;


class TiuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $result = [];
        echo "papi";
        $data =  DB::table('papi_models')
            ->get();
        // dd($data);
        for ($d = 0; $d < count($data); $d++) {
            $p = $data[$d];
            $p->jumlahbenar = 0;
            $p->ss = 0;
            $p->cluster = '';

            if ($p->jwb1 == 2) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb2 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb3 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb4 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb5 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }

            if ($p->jwb6 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb7 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb8 == 1) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb9 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb10 == 3) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }

            if ($p->jwb11 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb12 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb13 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb14 == 3) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb15 == 2) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }

            if ($p->jwb16 == 3) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb17 == 2) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb18 == 3) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb19 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb20 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }

            if ($p->jwb21 == 3) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb22 == 3) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb23 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb24 == 4) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb25 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }

            if ($p->jwb26 == 1) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb27 == 2) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb28 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb29 == 3) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }
            if ($p->jwb30 == 5) {
                $p->jumlahbenar = $p->jumlahbenar + 1;
            }



            if (($p->jumlahbenar >= 0) && ($p->jumlahbenar <= 1)) {
                $p->ss = 5;
                $p->cluster = 'R';
            } else
            if (($p->jumlahbenar >= 2) && ($p->jumlahbenar <= 3)) {
                $p->ss = 6;
                $p->cluster = 'C-';
            } else
            if (($p->jumlahbenar >= 4) && ($p->jumlahbenar <= 5)) {
                $p->ss = 7;
                $p->cluster = 'C-';
            } else
            if (($p->jumlahbenar >= 6) && ($p->jumlahbenar <= 7)) {
                $p->ss = 8;
                $p->cluster = 'C-';
            } else
            if (($p->jumlahbenar >= 8) && ($p->jumlahbenar <= 9)) {
                $p->ss = 9;
                $p->cluster = 'C';
            } else
            if (($p->jumlahbenar >= 12) && ($p->jumlahbenar <= 13)) {
                $p->ss = 11;
                $p->cluster = 'C';
            } else
            if (($p->jumlahbenar >= 14) && ($p->jumlahbenar <= 15)) {
                $p->ss = 12;
                $p->cluster = 'C+';
            } else
            if (($p->jumlahbenar >= 16) && ($p->jumlahbenar <= 17)) {
                $p->ss = 13;
                $p->cluster = 'C+';
            } else
            if (($p->jumlahbenar >= 18) && ($p->jumlahbenar <= 19)) {
                $p->ss = 14;
                $p->cluster = 'C+';
            } else
            if (($p->jumlahbenar >= 20) && ($p->jumlahbenar <= 21)) {
                $p->ss = 15;
                $p->cluster = 'T';
            } else
            if (($p->jumlahbenar >= 22) && ($p->jumlahbenar <= 23)) {
                $p->ss = 16;
                $p->cluster = 'T';
            } else
            if (($p->jumlahbenar >= 24) && ($p->jumlahbenar <= 25)) {
                $p->ss = 17;
                $p->cluster = 'T';
            } else
            if (($p->jumlahbenar >= 26) && ($p->jumlahbenar <= 27)) {
                $p->ss = 18;
                $p->cluster = 'ST';
            } else
            if (($p->jumlahbenar >= 28) && ($p->jumlahbenar <= 29)) {
                $p->ss = 19;
                $p->cluster = 'ST';
            }
            if (($p->jumlahbenar >= 30) && ($p->jumlahbenar <= 30)) {
                $p->ss = 20;
                $p->cluster = 'ST';
            }




            array_push($result, $p);
        }

        //dd($result);


        //use -> untuk memumculkan field (fielsd bersifat object)
        //dump($result[0]->no_pendaftaran);

        return view('tiu/tiu', ['data' => $result]);
        // return response()->json(['status' => 'success', 'data' => $result, 'code' => 200]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}