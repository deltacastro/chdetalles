@component('mail::message')
# Reporte diario {{$data['tienda']}}
<br>
Se envía reporte automatico diario de servicios.

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
