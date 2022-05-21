%% Matrix Method

x = [1 1 0 3];
h = [1 1 8 0];
N=4;
for i =1 :N-1
    y(:,i) = [x(N-i+1: N)  x(1:N-i)];
end
z = [x' y]

y = z*h'
     
%% Tabular array method

x = [1 1 0 3];
h = [1 1 8 0];
N=4;

for i =1 :N-1
    y(i) = [h(i:-1: 1)  h(N:-1:i+1)]*x';
end
y(N) = h(N:-1:1)*x'

%% graphical method
x = [1 1 0 3];
h = [1 1 8 0];
N=4;
n = 0:1:N-1;
subplot(3 ,2,1);
stem(n,x);

for i =1:N-1
    z(i,:) = [h(i:-1: 1)  h(N:-1:i+1)];
    subplot(3 , 2 ,i+1)
    stem(n,z(i,:))
end
subplot(3,2,5);
stem(n, h(N:-1:1));
z = [z ; h(N:-1:1)];
y = z*x'
subplot(3,2,6)
stem(x,y)

%% linear convolution

clear
x = [1 1 0 3];
h = [1 1 8 0];
N= length(x)+length(h)-1;
x = [x zeros(1,N-length(x))];
h = [h zeros(1,N-length(h))];
% to reverse
h = [N:-1:1];
for i=1:N
    y(i) = x(1:i)*h(N-i+1 : N)';
end
y