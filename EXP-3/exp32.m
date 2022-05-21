% Tabular array method
clear
x = [1 1 0 3];
h = [1 1 8 0];
N=4;

for i =1 :N-1
    y(i) = [h(i:-1: 1)  h(N:-1:i+1)]*x';
end
y(N) = h(N:-1:1)*x'
