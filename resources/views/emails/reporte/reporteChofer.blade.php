@component('mail::message')
# Reporte diario de servicios de choferes del estado de {{$data['estado']}}
<br>
Se envía reporte automatico diario de servicios realizados por choferes.

{{-- ## Datos de prueba

###rol: {{$user->role->rol_name}} --}}

{{-- ###array de tiendas:
```
{!!$user->stores!!}
``` --}}
<br>
Attentamente,<br>
BipBip
@endcomponent
