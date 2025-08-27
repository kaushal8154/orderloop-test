<?php

namespace App\Listeners;

use App\Events\BookBorrowed;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;

class SendBookNotification
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(BookBorrowed $event): void
    {
        //
        $booking = $event->bookingInfo;
        /** Send Admin email  */
        
        $adminemail = config('app.notify_email'); 
        $mailBody = array('username'=>$booking->username,'bookname'=>$booking->bookname,'admin_emailid'=>$adminemail);

        // put Log to debug
        Log::info('outside listner log: ',[$mailBody]);        
        if($booking->flag == 'borrow'){

            Mail::send('mails.booking',$mailBody, function($message) use ($adminemail)
            {    
                $message->to($adminemail)->subject('LaravelDemo - Book Borrowed ');    
            });

        }else if($booking->flag == 'return'){
            Mail::send('mails.return',$mailBody, function($message) use ($adminemail)
            {    
                $message->to($adminemail)->subject('LaravelDemo - Book Returned ');    
            });
        }
        
        /** ------------------  */
    }
}
