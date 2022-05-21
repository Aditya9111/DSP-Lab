%overlap save
clear
clc
x = [1 2 1 3 4 -1 -1 -2 -4 -1 -2 3 2 1 5 6 8 -6];
h= [1 -1 1];

lx = length(x);
M = length(h);
L =7;
N= L-M+1;

r = rem(lx,N);
x = [x zeros(1 ,(N-r))];
h = [h zeros(1 ,(L-M) )];

x1 = [zeros(1 ,M-1) x(1:N)];
for i= 1:length(x)/N-1
    x2(i,:) = ((i*N)-M+1: (i+1)*N)
    y2(i,:) = cconv(x2(i,:),h,L)
end
y3= [cconv(x1,h,L);y2]
y = [y3(1,(M:L)) y3(2,(M:L)) y3(3,(M:L)) y3(4,(M:N))]