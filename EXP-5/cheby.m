%chebyshev filter
clc;
clear;
%wp=input("Enter...:")
%ws=input("Enter...:")
%rp=input("Enter...:")
%rs=input("Enter...:")
wp=50;
ws=100;
rp=0.02;
rs=0.01;
lwp=length(wp);
[n,wn]= cheb1ord(wp,ws,rp,rs,'s')
if lwp==1
    if wp<ws
        disp('low pass')
        [b,a]= cheby1(n,wn,'low','s')
        w=0:1:(2*max(wp,ws));
    else
        disp('high pass')
        [b,a]= cheby1(n,wn,'high','s')
        w= 0:1:(2*max(wp,ws));
    end
else
    if wp(1)>ws(1)
    disp('band pass')
    [b,a]= cheby1(n,wn,'pass','s')
    w= 0:1:(2*max(wp(1),ws(1)));
    else
        disp('band stop')
        [b,a]= cheby1(n,wn,'stop','s')
        w= 0:1:(2*max(wp(1),ws(1)));
    end
end
h=freqs(b,a,w)
mag= 20*log(abs(n))
plot(w,mag)
%[z p k]= cheb1ap(n)

