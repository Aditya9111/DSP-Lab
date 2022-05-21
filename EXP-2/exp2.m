%1ms19ee004
% Exp 2 Generating Signal
n = 0:0.01:5;
u1 =(n>= 0 & n<1);
u2 =(n>= 1 & n<2);
u3 =(n>= 2 & n<3);
u4 =(n>= 3 & n<4);
                                                                                                                                     
y = sin(0.5*pi*n).*u1;
y1 = exp(-(n-1)).*u2;
y2 = -u3;
y3 = (n-4).*u4;
f = y + y1+y2+y3;


plot(n*2,f , 'r');
grid on;

%% step
u = 0:0.01:2;
n = step(u);
plot(n,u);

%% step -2
u = 0:0.01:2;
n = step(u-1) + step(u-2);
plot(n,u)

