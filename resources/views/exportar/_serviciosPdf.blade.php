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
                    <h1 class="title">CHEDRAUI DOMICILIO</h1>
                </td>
            </tr>
        </table>
	</div>

	<div class="contentTable">
		<div class="center">
			<table>
                <thead>
                    <tr>
                        <th colspan="1"></th>
                        <th colspan="6"></th>
                        <th class="text-center" colspan="2">Costos</th>
                        <th colspan="1"></th>
                    </tr>
                    <tr>
                        {{-- <th>Numero de pedido</th> --}}
                        <th width="7%">Folio</th>
                        <th width="16%">Cliente</th>
                        {{-- <th>Dirección cliente</th> --}}
                        <th width="7%">Fecha</th>
                        {{-- <th>Descripción</th> --}}
                        <th width="16%">Chofer</th>
                        <th width="16%">Tienda</th>
                        <th width="6%">Km</th>
                        <th width="5%">Vueltas</th>
                        <th width="7%">Base</th>
                        <th width="7%">Vueltas</th>
                        <th width="7%">Horario</th>
                        <th width="7%">Total</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($servicios as $servicio)
                    <tr>
                        {{-- <td>{{$servicio->number_pedido}}</td> --}}
                        <td>{{$servicio->folio}}</td>
                        <td>{{$servicio->name_client}}</td>
                        {{-- <td>{{$servicio->address_client}}</td> --}}
                        <td>{{$servicio->date_register->format('d-m-Y')}}</td>
                        {{-- <td>{{$servicio->fechaLeible()}}</td> --}}
                        {{-- <td>{{$servicio->indications}}</td> --}}
                        <td>{{$servicio->chofer != null ? $servicio->chofer->fullname : '*-*'}}</td>
                        <td>{{$servicio->user->tiendas != null ? $servicio->user->tiendas[0]->name_store : '*-*'}}</td>
                        <td class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->km : '*-*'}}</td>
                        <td class="text-center">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->vueltas : '*-*'}}</td>
                        <td class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo : '*-*'}}</td>
                        <td class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo_vueltas : '*-*'}}</td>
                        <td class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo_penalizacion : '*-*'}}</td>
                        <td class="text-right">{{$servicio->serviceDetail != null ? $servicio->serviceDetail->total : '*-*'}}</td>
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
			$pdf->page_text($x, $y, $text, $font, $size);
		}
	</script>
</body>
</html>
