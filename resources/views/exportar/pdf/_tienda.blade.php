<!doctype html>
<html>

<head>
    <style type="text/css">

        html, body{
            margin: 15px;
            padding: 0;
            font-family: Nunito,-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
            font-weight: 400;
            line-height: 1.5;
            color: #858796;
            text-align: left;
        }

        table th {
            font-size: 13px;
            padding: 0px 4px;
        }

        table td {
            font-size: 12px;
            padding: 0px 4px;
        }

        .text-right {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }

        .contentTable {
			margin-top: 30px;
		}

        table {
			border-collapse: collapse;
			border-spacing: 30px;
            width: 100%;
		}

		.logo-wrapper {
			display: inline-block;
			width: 6%;
			padding: 15px 0px;
		}

        .title-wrapper {
            display: inline-block;
            width: 80%;
            text-align: center;
            vertical-align: middle;
            /* padding-top: 20px; */
            /* background-color: red; */
            /* align-items: center; */
            /* justify-content: center; */
        }

        .header {
            display: flex;
        }

        .title {
            text-align: center;
            padding-right: 6%;
            font-size: 30px;
        }

        .subtitle2 {
            text-align: center;
            padding-right: 6%;
        }

        .truncate {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .mw-16 {
            max-width: 118px;
        }

        .mw-30 {
            max-width: 30px;
        }

        .mw-40 {
            max-width: 40px;
        }

        .border-left {
            border-left: 1px solid black;
        }

        .border-right {
            border-right: 1px solid black;
        }

        .border-bottom {
            border-bottom: 1px solid black;
        }

        .border-bottom-light {
            border-bottom: .8px solid rgb(44, 44, 44);
        }

        .border-x {
            border-right: 1px solid black;
            border-left: 1px solid black;
        }

        .page-number {
            color: yellow;
        }

        .bg-light-gray {
            background-color: ghostwhite;
        }

    </style>
</head>

<body>
	<div class="header">
        <table>
            <tr>
                <td width="6%">
                    <img src="{{$pathimg}}" alt="Logo" width="100px" />
                </td>
                <td class="text-center" width="80%">
                    <h1 class="title">Registro de consignas</h1>
                    <h2 class="subtitle2">Sucursal <small>{{ $tienda->num_tienda }}</small></h2>
                </td>
            </tr>
        </table>
	</div>

	<div class="contentTable">
		<div class="center">
			<table>
                <thead>
                    <tr>
                        <th colspan="2">Número de sucursal</th>
                        <th colspan="4">{{ $tienda->num_tienda }}</th>
                    </tr>
                    <tr>
                        <th class="border-bottom">Fecha</th>
                        <th class="border-bottom">Hora</th>
                        <th class="border-bottom">Núm. Consigna</th>
                        <th class="border-bottom">Nombre del proveedor</th>
                        <th class="border-bottom">Domicilio</th>
                        <th class="border-bottom">Total</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($servicios as $servicio)
                    @php
                        $evenStyle = $loop->even ? 'bg-light-gray' : '';
                    @endphp
                    <tr>
                        <td class="border-bottom-light {{$evenStyle}}">{{$servicio->fechaLeible()}}</td>
                        <td class="border-bottom-light {{$evenStyle}}">{{$servicio->horaLeible()}}</td>
                        <td class="border-bottom-light {{$evenStyle}}">{{$servicio->consignacion}}</td>
                        <td class="border-bottom-light {{$evenStyle}}">Taxi</td>
                        <td class="border-bottom-light {{$evenStyle}}" width="20%">{{$servicio->address_client}}</td>
                        <td class="border-bottom-light {{$evenStyle}}">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->total : 'Sin el dato'}}</td>
                        {{-- <td>{{$servicio->number_pedido}}</td> --}}
                        {{-- <td class="" width="7%">{{$servicio->folio}}</td> --}}
                        {{-- <td width="7%">{{$servicio->date_register->format('d-m-Y')}}</td> --}}
                        {{-- <td width="13%">
                            <div class="truncate mw-16">
                                {{mb_strimwidth($servicio->name_client, 0, 25, "...")}}
                            </div>
                        </td> --}}
                        {{-- <td>{{$servicio->address_client}}</td> --}}
                        {{-- <td>{{$servicio->fechaLeible()}}</td> --}}
                        {{-- <td>{{$servicio->indications}}</td> --}}
                        {{-- <td width="13%">
                            <div class="truncate mw-16">
                                {{$servicio->chofer != null ? mb_strimwidth($servicio->chofer->fullname, 0, 40, "...") : '*-*'}}
                            </div>
                        </td> --}}
                        {{-- <td width="13%">
                            <div class="truncate mw-16">
                                {{$servicio->user->tiendas != null ? mb_strimwidth($servicio->user->tiendas[0]->name_store, 0, 40, "...") : '*-*'}}
                            </div>
                        </td> --}}
                        {{-- <td width="6%" class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->km : '*-*'}}</td> --}}
                        {{-- <td width="5%" class="text-center">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->vueltas : '*-*'}}</td> --}}
                        {{-- <td width="9%" class="text-right border-left">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo : '*-*'}}</td> --}}
                        {{-- <td width="9%" class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo_vueltas : '*-*'}}</td> --}}
                        {{-- <td width="9%" class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo_penalizacion : '*-*'}}</td> --}}
                        {{-- <td width="9%" class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->total : '*-*'}}</td> --}}
                    </tr>
                    @endforeach
                </tbody>
            </table>
		</div>
	</div>

	<div id="footer">
		<div class="page-number"></div>
	</div>
	<script type="text/php">
		if (isset($pdf)) {
			$text = "Página {PAGE_NUM} / {PAGE_COUNT}";
			$size = 15;
			$font = $fontMetrics->getFont("Verdana");
			$width = $fontMetrics->get_text_width($text, $font, $size) / 2;
			$x = ($pdf->get_width() - $width) / 2;
			$y = $pdf->get_height() - 35;
			$pdf->page_text($x+30, $y, $text, $font, $size, [0.52, 0.53, 0.59]);
		}
	</script>
</body>
</html>
