<?php

namespace App\Http\Controllers;

use App\Models\riasec_model;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\RiasecResource;
use Illuminate\Support\Facades\Validator;
use DB;
use Exception;

class RiasecController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {


        // ==================================================================================================

        $result = [];

        $r =  array(1, 7, 14, 22, 30, 32, 37);
        $i =  array(2, 11, 18, 21, 26, 33, 39);
        $a =  array(3, 8, 17, 23, 27, 31, 41);
        $s =  array(4, 12, 13, 20, 28, 34, 40);
        $e =  array(5, 10, 16, 19, 29, 36, 42);
        $c =  array(6, 9, 15, 24, 25, 35, 38);

        $data =  DB::table('riasec_models')
            ->get();

        for ($d = 0; $d < count($data); $d++) {
            $p = $data[$d];

            //dump($data[$d]);
            $rs =  0;
            $is =  0;
            $as =  0;
            $ss =  0;
            $es =  0;
            $cs =  0;
            $desk = " ";

            // dump(($data[$d]->$a_string));
            for ($x = 0; $x <= (count($r) - 1); $x++) {

                $r_string = 'jawab' . $r[$x];
                if (($data[$d]->$r_string) == 1) {
                    $rs = $rs + 1;
                }
            }
            // dump("rs : " . $rs);
            $p->rs = $rs;

            for ($x = 0; $x <= (count($i) - 1); $x++) {
                $i_string = 'jawab' . $i[$x];
                if (($data[$d]->$i_string) == "1") {
                    $is = $is + 1;
                }
            }
            $p->is = $is;

            for ($ax = 0; $ax <= (count($a) - 1); $ax++) {
                $a_string = 'jawab' . $a[$ax];
                if (($data[$d]->$a_string) == "1") {
                    $as = $as + 1;
                }
            }

            $p->as = $as;


            for ($x = 0; $x <= (count($s) - 1); $x++) {
                $s_string = 'jawab' . $s[$x];
                if (($data[$d]->$s_string) == "1") {
                    $ss = $ss + 1;
                }
            }

            $p->ss = $ss;


            for ($x = 0; $x <= (count($e) - 1); $x++) {
                $e_string = 'jawab' . $e[$x];
                if (($data[$d]->$e_string) == "1") {
                    $es = $es + 1;
                }
            }

            $p->es = $es;


            for ($x = 0; $x <= (count($c) - 1); $x++) {
                $c_string = 'jawab' . $c[$x];
                if (($data[$d]->$c_string) == "1") {
                    $cs = $cs + 1;
                }
            }

            $p->cs = $cs;


            $ares = array(
                'r' => $rs,
                'i' => $is,
                'a' => $as,
                's' => $ss,
                'e' => $es,
                'c' => $cs,
            );

            $max = max($ares);

            //dump($rs);
            if ($rs == $max) {
                $desk = $desk . "individu dengan minat ini biasanya memiliki keahlian atletik atau mekanik dan menyukai kegiatan luar ruangan dengan peralatan atau mesin. Ex: mekanik, ATC (air traffic controller), surveyor, ahli elektronik dan petani.<br>";
            }

            //dump($is);
            if ($is == $max) {
                $desk = $desk . " Individu dengan minat ini biasanya memiliki keahlian sains dan matematika, menyukai kesendirian dalam pekerjaan maupun memecahkan masalah. Ex : ahli biologi,kimia, fisika, geologi, laboratorium dan penelitian termasuk teknisi medis.<br>";
            }

            //dump($as);
            if ($as == $max) {
                $desk = $desk . " Individu dengan minat ini biasanya memiliki keahlian seni, menyenangi pekerjaan orisinal dan memiliki imajinasi tinggi. 
            Ex : composer, musisi, pengarah panggung, penari, decorator,  aktor atau aktris dan penulis.<br>";
            }

            //dump($ss);
            if ($ss == $max) {
                $desk = $desk . " Individu dengan minat ini biasanya menyenangi keberadaan diri dalam sosial, tertarik bagaimana bergaul dengan situasi sosial dan suka membantu permasalahan orang lain. Ex : guru, terapis, pekerja religius, konselor, psikolog, perawat.<br>";
            }

            //dump($es);
            if ($es == $max) {
                $desk = $desk . " Individu dengan minat ini biasanya memiliki jiwa kepemimpinan, kemampuan berbicara di depan umum, tertarik dengan uang dan politik dan senang untuk mempengaruhi orang lain.<br>";
            }

            //dump($cs);
            if ($cs == $max) {
                $desk = $desk . " Individu dengan minat ini biasanya memiliki keahlian klerikal dan matematika, menyukai pekerjaan dalam ruang dan mengelola sesuatu agar rapi (terorganisir). Ex: analis keuangan, pegawai perpustakaan, banking, ahli pajak, sekretaris, korespondensi, akunting.<br>";
            }

            // dump($desk);

            $p->desk = $desk;
            array_push($result, $p);
        }

        // dd($result);


        //use -> untuk memumculkan field (fielsd bersifat object)
        //dump($result[0]->no_pendaftaran);

        return view('riasec/riasec', ['data' => $result]);
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