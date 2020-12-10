<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ReporteTienda extends Mailable
{
    use Queueable, SerializesModels;

    public $data;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $path = "exportar/tienda/{$this->data['tienda']}/servicios-{$this->data['fecha_inicio']}.xlsx";

        // $mail = $this->from('noresponder@servicioschedraui.tobecorporativo.mx', 'Notificaciones')
        //             ->markdown('emails.reporte.reporteTienda') ;

        // foreach ($this->data['files'] as $file) {
        //     $mail->attachFromStorage($file['path'], $file['name'], [
        //         'mime' => 'application/vnd.ms-excel'
        //     ]);
        // }

        // return $mail;

        return $this->from('noresponder@servicioschedraui.tobecorporativo.mx', 'Notificaciones')
                    ->markdown('emails.reporte.reporteTienda')
                    ->attachFromStorage($path, "servicios-{$this->data['tienda']}-{$this->data['fecha_inicio']}.xlsx", [
                        'mime' => 'application/vnd.ms-excel'
                    ]);
    }
}
