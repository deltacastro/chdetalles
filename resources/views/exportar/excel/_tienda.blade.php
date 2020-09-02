<table>
    <thead>
        <tr>
            <th colspan="6">Registro de consignias</th>
        </tr>
        <tr>
            <th>Número de sucursal</th>
            <th>6</th>
        </tr>
        <tr>
            <th>Fecha</th>
            <th>Hora</th>
            <th>Núm. Consigna</th>
            <th>Nombre del proveedor</th>
            <th>Domicilio</th>
            {{-- <th>Fecha del servicio</th> --}}
            {{-- <th>Descripción</th> --}}
            {{-- <th>Chofer</th> --}}
            {{-- <th>Tienda</th> --}}
            {{-- <th>Total recorrido (km)</th> --}}
            {{-- <th>Vueltas extras</th> --}}
            {{-- <th>Costo base</th> --}}
            {{-- <th>Costo extra por vueltas</th> --}}
            {{-- <th>Costo extra por entrega fuera de horario</th> --}}
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($servicios as $servicio)
        <tr>
            <td>{{$servicio->fechaLeible()}}</td>
            <td>{{$servicio->fechaLeible()}}</td>
            <td>{{$servicio->consignacion}}</td>
            <td>Taxi</td>
            <td>{{$servicio->address_client}}</td>
            <td>{{$servicio->serviceDetail != null ? $servicio->serviceDetail->total : 'Sin el dato'}}</td>
            {{-- <td>{{$servicio->folio}}</td> --}}
            {{-- <td>{{$servicio->amount}}</td> --}}
            {{-- <td>{{$servicio->name_client}}</td> --}}
            {{-- <td>{{$servicio->indications}}</td> --}}
            {{-- <td>{{$servicio->chofer != null ? $servicio->chofer->fullname : 'Sin el dato'}}</td> --}}
            {{-- <td>{{$servicio->user->tiendas != null ? $servicio->user->tiendas[0]->name_store : 'Sin el dato'}}</td> --}}
            {{-- <td>{{$servicio->serviceDetail != null ? $servicio->serviceDetail->km : 'Sin el dato'}}</td> --}}
            {{-- <td>{{$servicio->serviceDetail != null ? $servicio->serviceDetail->vueltas : 'Sin el dato'}}</td> --}}
            {{-- <td>{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo : 'Sin el dato'}}</td> --}}
            {{-- <td>{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo_vueltas : 'Sin el dato'}}</td> --}}
            {{-- <td>{{$servicio->serviceDetail != null ? $servicio->serviceDetail->costo_penalizacion : 'Sin el dato'}}</td> --}}
        </tr>
        @endforeach
    </tbody>
</table>
