<?php

namespace App\Exports;

use App\Servicio;
use App\Tienda;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Concerns\WithDrawings;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;

// class ReporteTiendaExport implements FromView, ShouldAutoSize, WithEvents, WithDrawings
class ReporteTiendaAutoExport implements FromView, ShouldAutoSize, WithEvents
{
    private $data;

    public function __construct($data)
    {
        $this->mServicio = new Servicio;
        $this->mServicio = $this->mServicio->porFechasObjectTienda($data);
        $this->mTienda = Tienda::find($data['tienda_id']);
        $this->totalHeaderRows = 3;
        $this->totalRows = $this->mServicio->count() + $this->totalHeaderRows;
    }

    public function view(): View
    {
        return view('exportar.excel._tienda', [
            'servicios' => $this->mServicio,
            'tienda' => $this->mTienda
        ]);
    }

    public function drawings()
    {
        $drawing = new Drawing();
        $drawing->setName('Logo');
        $drawing->setDescription('This is my logo');
        $drawing->setPath(public_path('/img/logo.png'));
        $drawing->setHeight(90);
        $drawing->setCoordinates('A1');
        $drawing->setOffsetX(40);
        $drawing->setOffsetY(15);
        // $drawing->setRotation(25);
        $drawing->getShadow()->setVisible(true);
        $drawing->getShadow()->setDirection(45);

        $drawing2 = new Drawing();
        $drawing2->setName('Logo2');
        $drawing2->setDescription('This is my logo2');
        $drawing2->setPath(public_path('/img/logo.png'));
        $drawing2->setHeight(90);
        $drawing2->setCoordinates('L1');
        $drawing2->setOffsetX(60);
        $drawing2->setOffsetY(15);
        // $drawing->setRotation(25);
        $drawing2->getShadow()->setVisible(true);
        $drawing2->getShadow()->setDirection(45);

        return [$drawing];
    }

    public function registerEvents(): array
    {
        $styleArray = [
            'borders' => [
                'allBorders' => [
                    'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    'color' => ['argb' => '000000'],
                ],
            ],
        ];
        return [
            AfterSheet::class => function(AfterSheet $event) use ($styleArray) {
                // LOGO
                // $cellLogo = 'A1';
                // $event->sheet->getDelegate()->getStyle($cellLogo)->getAlignment()->setHorizontal('center');
                // $event->sheet->getDelegate()->getStyle($cellLogo)->getAlignment()->setVertical('center');
                // $event->sheet->getDelegate()->getStyle($cellLogo)->getActiveSheet()->getRowDimension('1')->setRowHeight(90);
                // $event->sheet->getDelegate()->getStyle($cellLogo)->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID);
                // $event->sheet->getDelegate()->getStyle($cellLogo)->getFill()->getStartColor()->setARGB('621132');

                // TITULO
                $cellTitle = 'A1';
                $event->sheet->getDelegate()->getStyle($cellTitle)->getFont()->setSize(15);
                $event->sheet->getDelegate()->getStyle($cellTitle)->getAlignment()->setHorizontal('center');
                $event->sheet->getDelegate()->getStyle($cellTitle)->getAlignment()->setVertical('center');
                // $event->sheet->getDelegate()->getStyle($cellTitle)->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID);
                $event->sheet->getDelegate()->getStyle($cellTitle)->getFill()->getStartColor()->setARGB('621132');
                $event->sheet->getDelegate()->getStyle($cellTitle)->getFont()->getColor()->setARGB('00000');

                // TIENDA
                $cellTitle = 'A2:B2';
                $event->sheet->getDelegate()->getStyle($cellTitle)->getFont()->setSize(15);
                $event->sheet->getDelegate()->getStyle($cellTitle)->getAlignment()->setHorizontal('center');
                $event->sheet->getDelegate()->getStyle($cellTitle)->getAlignment()->setVertical('center');
                // $event->sheet->getDelegate()->getStyle($cellTitle)->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID);
                $event->sheet->getDelegate()->getStyle($cellTitle)->getFill()->getStartColor()->setARGB('621132');
                $event->sheet->getDelegate()->getStyle($cellTitle)->getFont()->getColor()->setARGB('00000');

                // HEADER
                $cellRange = 'A3:F3'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
                $event->sheet->getDelegate()->getStyle($cellRange)->getAlignment()->setHorizontal('center');
                $event->sheet->getDelegate()->getStyle($cellRange)->getAlignment()->setVertical('center');
                $event->sheet->getDelegate()->getStyle($cellRange)->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID);
                $event->sheet->getDelegate()->getStyle($cellRange)->getFill()->getStartColor()->setARGB('000000');
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->getColor()->setARGB('FFFFFFFF');

                // BODY
                $cellBodyrange = "A3:F{$this->totalRows}";
                $event->sheet->getDelegate()->getStyle($cellBodyrange)->applyFromArray($styleArray);
                // $event->sheet->getDelegate()->getStyle($cellBodyrange)->getFont()->getColor()->setARGB('FFFFFFFF');
                $event->sheet->getDelegate()->getStyle($cellBodyrange)->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID);
                // $event->sheet->getDelegate()->getStyle($cellBodyrange)->getFill()->getStartColor()->setARGB('d6d6d6');
                $event->sheet->getDelegate()->setAutoFilter('A3:F3');
            },
        ];
    }
}
