%overall add
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
h = [h zeros(1 ,L-M )];

for i=1:length(x)/N
    x1(i,:)= [ x((i-1)*N+1:i*N)   zeros(1,M-1)];        
    y(i,:) = cconv(x1(i,:),h,L)
end

for i= 1: length(x)/N-1
    z(i,:) = [zeros(1, (i-1)*N) y(i,:) zeros(1,(lx-L-((i-1)*N)))];
end

overall = sum(z)
