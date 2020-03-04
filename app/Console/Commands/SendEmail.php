<?php

namespace App\Console\Commands;

use App\Custom_User;
use App\Http\Controllers\ServiciosController;
use App\Mail\ReporteGeneral;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class SendEmail extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'email:send';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Envia por correo los reportes a los gerentes y administradores';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        // $_SERVER['SERVER_NAME'] = 'http://localhost';
        // dd($_SERVER['SERVER_NAME']);
        $serviciosController = new ServiciosController;
        $serviciosController->guardarReporte();
        // dd([
        //     \Config::get('mail.driver'),
        //     \Config::get('mail.host'),
        //     \Config::get('mail.port'),
        //     \Config::get('mail.username'),
        //     \Config::get('mail.password'),
        // ]);
        // $mUser = new Custom_User;
        // $user = $mUser->with(['persona'])->first();
        // try {
        //     Mail::to('abel.castro9111@gmail.com')->send(new ReporteGeneral($user));
        // } catch (\Throwable $th) {
        //     dd('error');
        // }

        $this->info('Se termino el proceso');
    }
}
