<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {

        $datatiu =  DB::table('tiu_models')
            ->get();
        $datapapi =  DB::table('papi_models')
            ->get();
        $datariasec =  DB::table('riasec_models')
            ->get();

        $datatiucount = $datatiu->count();
        $datapapicount = $datapapi->count();
        $datariaseccount = $datariasec->count();

        $result = [
            'datatiucount' => $datatiucount,
            'datapapicount' => $datapapicount,
            'datariaseccount' => $datariaseccount,

        ];

        //dump($result);
        // dump($datatiucount);
        // dump($datapapicount);
        // dump($datariaseccount);

        // dd($request->path());
        if (view()->exists($request->path())) {
            return view('dashboard', ['data' => $result]);
        }
        return abort(404);
    }

    public function root()
    {
        return view('index');
    }

    /*Language Translation*/
    public function lang($locale)
    {
        if ($locale) {
            App::setLocale($locale);
            Session::put('lang', $locale);
            Session::save();
            return redirect()->back()->with('locale', $locale);
        } else {
            return redirect()->back();
        }
    }

    public function FormSubmit(Request $request)
    {
        return view('form-repeater');
    }
}