% Generation of elementary signal
%Aditya Arya - 1MS19EE004
%% impulse function
n = -5:1:5;
del = (n==0);
stem(n,del);
%% step fuction
u =(n>=0);
stem(n,u);
%% step function cont.
n = -5:0.01:5;
u =(n>=0);
plot(n,u);
%% ramp function
r= n.*u;
plot(n,r);
%% exponential-increasing
t= -5:0.01:5;
r = exp(t);
plot(t,r);
%% exponential-decreasing
r = exp(-t);
plot(t,r);
%% sinusoidal decreasing cont.
r = exp(-t).*sin(2*pi*t);
plot(t,r);
%% sinusoidal increasing cont.
r = exp(t).*sin(2*pi*t);
plot(t,r);
%% sinusoidal decreasing discrete
n=-5:0.1:5;
r = exp(-n).*sin(2*pi*n);
stem(n,r);
%% sinusoidal decreasing discrete
n=-5:0.1:5;
r = exp(n).*sin(2*pi*n);
stem(n,r);
