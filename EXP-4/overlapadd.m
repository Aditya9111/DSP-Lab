clc;
clear all;
Xn = [2 -2 8 -2 -2 -3 -2 1 -1 9 1 3];
Hn = [1 2 3];
L=4;
% Code to plot X(n)
subplot (2,2,1);
stem(Xn);
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' X(n)');
%Code to plot H(n)
subplot (2,2,2);
stem(Hn,'red');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title(' H(n)');
% Code to perform Convolution using Overlap Add Method
NXn=length(Xn);
M=length(Hn);
M1=M-1;
R=rem(NXn,L);
N=L+M1;
Xn=[Xn zeros(1,L-R)];
Hn=[Hn zeros(1,N-M)];
K=floor(NXn/L);
y=zeros(K+1,N);
z=zeros(1,M1);
for k=0:K
Xnp=Xn(L*k+1:L*k+L);
Xnk=[Xnp z];
y(k+1,:)=cconv(Xnk,Hn); 
end
p=L+M1;
for i=1:K
y(i+1,1:M-1)=y(i,p-M1+1:p)+y(i+1,1:M-1);
end
z1=y(:,1:L)';
y=(z1(:))'
%Code to plot the Convolved Signal
subplot (2,2,3:4);
stem(y,'black');
xlabel ('n---->');
ylabel ('Amplitude ---->');
title('Convolved Signal');