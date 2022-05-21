% IIR filter design butterworth filter also known as flat filter and
% monotonous pass band
clc;
clear;
% wp=input("Enter...in rad/sec:")
% ws=input("Enter...in rad/sec:")
% rp=input("Enter...ripple:")
% rs= input("Enter...ripple:")
wp=50;
ws=100;
rp=0.02;
rs=0.01;
lwp=length(wp);
[n,wn] = buttord(wp,ws,rp,rs,"s");% s means laplace domain
if lwp==1
    if wp<ws
        disp("low pass")
        [b,a]= butter(n,wn,'low','s')
        w= 0:1:(2*max(wp,ws));
    else
        disp('High pass')
        [b,a]= butter(n,wn,'high','s')
        w=0:1:(2*max(wp,ws));
    end
elseif wp(1)>ws(1)
    disp('band pass')
    [b,a]= butter(n,wn,'pass','s')
    w= 0:1:(2*max(wp(1),ws(1)));
    else
    disp('band stop')
    [b,a]= butter(n,wn,'stop','s')
    w= 0:1:(2*max(wp(1),ws(1)));
end
h=freqs(b,a,w)
mag= 20*log(abs(h))
plot(w,mag)
%[z p k]= buttap(n)