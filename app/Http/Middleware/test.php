<?php

namespace App\Http\Middleware;

use Closure;

class test
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $ip = $request->ip();
        if($ip=='::1'){
            return redirect('middata');
        }else{
            echo "Ip Address are not private";
        }
        return $next($request);
    }
}
