<?php

namespace App\Http\Controllers\Helpers;

use Illuminate\Support\Carbon;

// use Illuminate\Http\Request;
// use App\Http\Controllers\Controller;

class Fechas
{
    public function __construct()
    {
        $this->aMeses = [
            '1' => 'Enero',
            '2' => 'Febrero',
            '3' => 'Marzo',
            '4' => 'Abril',
            '5' => 'Mayo',
            '6' => 'Junio',
            '7' => 'Julio',
            '8' => 'Agosto',
            '9' => 'Septiembre',
            '10' => 'Octubre',
            '11' => 'Noviembre',
            '12' => 'Diciembre'
        ];
        $this->aDaysOfWeek = [
            '1' => 'Lunes',
            '2' => 'Martes',
            '3' => 'Miércoles',
            '4' => 'Jueves',
            '5' => 'Viernes',
            '6' => 'Sábado',
            '0' => 'Domingo'
        ];
    }

    public function human()
    {

    }

    private function readHuman(Carbon $date, Bool $dayName = null, Bool $time = null)
    {
        $dia = $date->day;
        $mes = $date->month;
        $year = $date->year;
        $time = $time === null ? false : $time;
        $dayName = $dayName === null ? false : $dayName;

        $returndate = "$dia de {$this->aMeses[$mes]} de $year";

        if ($time) {
            $hora = $date->format('h');
            $minuto = $date->format('i');
            $meridiem = $date->meridiem;
            $returndate .= " a las $hora:$minuto $meridiem";
        }

        if($dayName) {
            $returndate = "{$this->aDaysOfWeek[$date->dayOfWeek]}, $returndate";
        }
        return $returndate;
    }

    public function hoy(String $format = null, Bool $human = null)
    {
        $format = $format === null ? 'd-m-Y' : $format;
        $human = $human === null ? false : $human;
        $date = Carbon::now();
        $datereturn = null;
        if ($human == true) {
            $datereturn = $this->readHuman($date, false, true);
        } else {
            $datereturn = $date->format($format);
        }
        return $datereturn;
    }

    public function nueva($date = null, Bool $human = null, $dayName = null, $time = false)
    {
        $date = is_string($date) ? new Carbon($date) : $date;
        $human = $human === null ? false : $human;
        $datereturn = $date;
        if ($human == true) {
            $datereturn = $this->readHuman($date, $dayName, $time);
        }
        return $datereturn;
    }

    public function nuevaHora($date)
    {
        $date = is_string($date) ? new Carbon($date) : $date;
        $hora = $date->format('h');
        $minuto = $date->format('i');
        $meridiem = $date->meridiem;
        return "$hora:$minuto $meridiem";
    }

    public function customDate()
    {
        $year = 2000; $month = 4; $day = 19;
        $hour = 20; $minute = 30; $second = 15; $tz = 'Europe/Madrid';
        echo Carbon::createFromDate($year, $month, $day, $tz)."\n";
        echo Carbon::createMidnightDate($year, $month, $day, $tz)."\n";
        echo Carbon::createFromTime($hour, $minute, $second, $tz)."\n";
        echo Carbon::createFromTimeString("$hour:$minute:$second", $tz)."\n";
        echo Carbon::create($year, $month, $day, $hour, $minute, $second, $tz)."\n";
    }
}
