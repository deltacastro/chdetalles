<?php

namespace App\Mail;

use App\Custom_User as User;
use App\Http\Controllers\ServiciosController;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Storage;

class ReporteGeneral extends Mailable
{
    use Queueable, SerializesModels;

    public $user;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        // $user = $this->mUser->first();
        // $storage_path = storage_path();
        $path = "exportar/{$this->user->iduser}/servicios.xlsx";
        // $path = "exportar/1/servicios.xlsx";
        // $storage_path = storage_path('app');
        // dd($storage_path);
        // $path = "{$storage_path}/app/exportar/{$user->iduser}/servicios.xls";
        // $file_path = '';

        return $this->from('soyunrobot@servicioschedraui.tobecorporativo.mx', 'Notificaciones')
                    ->markdown('emails.reporte.excel')
                    ->attachFromStorage($path, 'reporte2.xlsx', [
                        'mime' => 'application/vnd.ms-excel'
                    ]);
    }
}
