clc;
clear;
t = -10:0.1:10;
T=4;
fm=1/T;
x= cos(2*pi*fm*t);
subplot(2,2,1);
plot(t,x,'linewidth',3);
xlabel('time');
ylabel('amplitude');
grid;
title('input signal');
n1=(-10:1:10);
fs=[fm 2*fm 8*fm];
label1 = {'under sampling','uniform sampling' ,'over sampling' };
for i=1:length(fs)
    z(i,:)= cos(2*pi*fm*n1/fs(i));
    subplot(2,2,i+1);
stem(n1,z(i,:),'linewidth' ,3);
xlabel('number of samples');
ylabel('amplitude');
hold on;
subplot(2,2,i+1);
plot(n1,z(i,:),'linewidth',3);
xlabel('time');
ylabel('amplitude');
grid;
title(label1(i));
end
