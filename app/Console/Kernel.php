<?php

namespace App\Console;

use App\Http\Controllers\ServiciosController;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')
        //          ->hourly();

        // $schedule->call(function(){
        //     $serviciosController = new ServiciosController;
        //     $serviciosController->guardarReporte();
        // })->everyFiveMinutes();
        $schedule->exec("wall 'ejectudado monthly on 4 14:54'")->everyMinute();
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }

    /**
     * Get the timezone that should be used by default for scheduled events.
     *
     * @return \DateTimeZone|string|null
     */
    // protected function scheduleTimezone()
    // {
    //     return 'America/Mexico_City';
    // }
}
