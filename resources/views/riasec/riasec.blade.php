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
    <h3>RIASEC Result</h3>
    <div class="table-responsive">
    <table class="table table-bordered table-striped dataTable">
    {{-- <table class="table table-bordered"> --}}
        <th>
            No Pendaftaran
        </th>

            <th>rs</th>
            <th>is</th>
             <th>as</th>
             <th>ss</th>
             <th>es</th>
             <th>cs</th>
             <th>description</th>


             
         @forelse ($data as $riasec)
                                <tr>
                                    <td>{{ $riasec->no_pendaftaran }}</td>
             <td>{{$riasec->rs}}</td>
             <td>{{$riasec->is}}</td>
             <td>{{$riasec->as}}</td>
             <td>{{$riasec->ss}}</td>
             <td>{{$riasec->es}}</td>
             <td>{{$riasec->cs}}</td>
             <td>{!!$riasec->desk!!}</td>

             
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