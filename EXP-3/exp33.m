% graphical method
clear
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