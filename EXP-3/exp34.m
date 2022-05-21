% linear convolution

clear
x = [1 1 0 3];
h = [1 1 8 0];
N= length(x)+length(h)-1;
x = [x zeros(1,N-length(x))];
h = [h zeros(1,N-length(h))];
% to reverse
h = h(N:-1:1);
for i=1:N
    y(i) = x(1:i)*h(N-i+1 : N)';
end
y
    

