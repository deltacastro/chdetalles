@component('mail::message')
# Reporte del mes

## Estimado {{$user->user}}
<br>
Se envia reporte automatico del mes.

## Datos de prueba

###rol: {{$user->role->rol_name}}

###array de tiendas:
```
{!!$user->stores!!}
```
<br>
Attentamente,<br>
Chedraui a Domicilio
@endcomponent
