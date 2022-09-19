@extends('layouts.master')
@section('title')
    @lang('translation.Orders')
@endsection
@section('css')
    <!-- DataTables -->
    <link href="{{ URL::asset('/assets/libs/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')
    {{-- @component('common-components.breadcrumb')
        @slot('pagetitle') Ecommerce @endslot
        @slot('title') Orders @endslot
    @endcomponent --}}
    {{--contoh memunculkan data from controler --}}
    {{-- id_pendaftaran :   {{$data[0]->no_pendaftaran}} --}}
    <h3>PAPI Result</h3>
    <div class="table-responsive">
    <table class="table table-bordered table-striped dataTable">
    {{-- <table class="table table-bordered"> --}}
        <th>
            No Pendaftaran
        </th>

            <th>g result</th>
            <th>g analisis</th>
             <th>l result</th>
             <th>l analisis</th>
             <th>i result</th>
             <th>i analisis</th>
             <th>t result</th>
             <th>t analisis</th>
             <th>v result</th>
             <th>v analisis</th>
             <th>s result</th>
             <th>s analisis</th>
             <th>r result</th>
             <th>r analisis</th>
             <th>d result</th>
             <th>d analisis</th>
             <th>c result</th>
             <th>c analisis</th>
             <th>e result</th>
             <th>e analisis</th>
             <th>w result</th>
             <th>w analisis</th>
             <th>f result</th>
             <th>f analisis</th>
             <th>k result</th>
             <th>k analisis</th>
             <th>z result</th>
             <th>z analisis</th>
             <th>o result</th>
             <th>o analisis</th>
             <th>b result</th>
             <th>b analisis</th>
             <th>x result</th>
             <th>x analisis</th>
             <th>p result</th>
             <th>p analisis</th>
             <th>a result</th>
             <th>a analisis</th>
             <th>n result</th>
             <th>n analisis</th>
         @forelse ($data as $papi)
                                <tr>
                                    <td>{{ $papi->no_pendaftaran }}</td>
             <td>{{$papi->gresult}}</td>
             <td>{{$papi->ganalisis}}</td>
             <td>{{$papi->lresult}}</td>
             <td>{{$papi->lanalisis}}</td>
             <td>{{$papi->iresult}}</td>
             <td>{{$papi->ianalisis}}</td>
             <td>{{$papi->tresult}}</td>
             <td>{{$papi->tanalisis}}</td>
             <td>{{$papi->vresult}}</td>
             <td>{{$papi->vanalisis}}</td>
             <td>{{$papi->sresult}}</td>
             <td>{{$papi->sanalisis}}</td>
             <td>{{$papi->rresult}}</td>
             <td>{{$papi->ranalisis}}</td>
             <td>{{$papi->dresult}}</td>
             <td>{{$papi->danalisis}}</td>
             <td>{{$papi->cresult}}</td>
             <td>{{$papi->canalisis}}</td>
             <td>{{$papi->eresult}}</td>
             <td>{{$papi->eanalisis}}</td>
             <td>{{$papi->wresult}}</td>
             <td>{{$papi->wanalisis}}</td>
             <td>{{$papi->fresult}}</td>
             <td>{{$papi->fanalisis}}</td>
             <td>{{$papi->kresult}}</td>
             <td>{{$papi->kanalisis}}</td>
             <td>{{$papi->zresult}}</td>
             <td>{{$papi->zanalisis}}</td>
             <td>{{$papi->oresult}}</td>
             <td>{{$papi->oanalisis}}</td>
             <td>{{$papi->bresult}}</td>
             <td>{{$papi->banalisis}}</td>
             <td>{{$papi->xresult}}</td>
             <td>{{$papi->xanalisis}}</td>
             <td>{{$papi->presult}}</td>
             <td>{{$papi->panalisis}}</td>
             <td>{{$papi->aresult}}</td>
             <td>{{$papi->aanalisis}}</td>
             <td>{{$papi->nresult}}</td>
             <td>{{$papi->nanalisis}}</td>
                                    <td class="text-center">
                                        {{-- <form onsubmit="return confirm('Apakah Anda Yakin ?');"
                                            action="{{ route('post.destroy', $papi->id) }}" method="POST">
                                            <a href="{{ route('post.edit', $papi->id) }}"
                                                class="btn btn-sm btn-primary">EDIT</a>
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-sm btn-danger">HAPUS</button>
                                        </form> --}}
                                    </td>
                                </tr>
                                @empty
                                <tr>
                                    <td class="text-center text-mute" colspan="4">Data tidak tersedia</td>
                                </tr>
                                @endforelse
    </table>
</div>
    {{-- nama <?= $name ?>
    nama {{$name}}
    html {!!$cobahtml!!} --}}
@endsection
@section('script')
    <script src="{{ URL::asset('/assets/libs/datatables/datatables.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/js/pages/ecommerce-datatables.init.js') }}"></script>
@endsection