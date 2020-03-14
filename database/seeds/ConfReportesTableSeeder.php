<?php

use App\Conf_Reporte;
use Illuminate\Database\Seeder;

class ConfReportesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $model = new Conf_Reporte;

        $data = [
            [
                'idstate' => 1,
                'dia_corte' => 10
            ],
            [
                'idstate' => 1,
                'dia_corte' => 15
            ],
            [
                'idstate' => 1,
                'dia_corte' => 20
            ],
            [
                'idstate' => 1,
                'dia_corte' => 25
            ],
            [
                'idstate' => 1,
                'dia_corte' => 30
            ],
        ];

        foreach ($data as $row) {
            $model->firstOrCreate($row);
        }
    }
}
