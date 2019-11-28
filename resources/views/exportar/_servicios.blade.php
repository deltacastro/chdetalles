<table>
    <thead>
        <tr>
            <th>Numero de pedido</th>
            <th>Folio</th>
            <th>Precio</th>
            <th>Nombre cliente</th>
            <th>Dirección cliente</th>
            <th>Fecha del servicio</th>
            <th>Descripción</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($servicios as $servicio)
        <tr>
            <td>{{$servicio->number_pedido}}</td>
            <td>{{$servicio->folio}}</td>
            <td>{{$servicio->amount}}</td>
            <td>{{$servicio->name_client}}</td>
            <td>{{$servicio->address_client}}</td>
            <td>{{$servicio->date_register}}</td>
            <td>{{$servicio->indications}}</td>
        </tr>
        @endforeach
    </tbody>
</table>
