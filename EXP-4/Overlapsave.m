clc;
clear all;
close all;
x = [2 -2 8 -2 -2 -3 -2 1 -1 9 1 3];
h= [1 2 3];
N=4
% Code to plot X(n)
subplot(2,2,1);
stem(x,'blue');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('X(n)');
%Code to plot H(n)
subplot(2,2,2);
stem(h,'black');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' H(n)');
% Code to perform Convolution using Overlap Save Method
lx=length(x);
1
lh=length(h);
m=lh-1;
x=[zeros(1,m) x zeros(1,N)];
h=[h zeros(1,N-lh)];
L=N-lh+1;
k=floor((length(h))/L);
for i=0:k
y=x(1,i*L+1:i*L+N);
q=cconv(y,h); %Call the mycirconv1 function.
p(i+1,:)=q;
end
p1=p(:,lh:N)';
p=p1(:)'
% Representation of the Convoled Signal
subplot(2,2,3:4);
stem(p,'red');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Convoled Signal');