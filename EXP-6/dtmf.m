clc;
clear;
fs=4e3;
t=0:1/fs:0.5-1/fs;
ver=[697 770 852 941];
hor=[1209 1336 1477];
tones=[];
for k=1:4
    for m=1:3
        tone=sum(sin(2*pi*[ver(k);hor(m)].*t))';
        tones= [tones;tone;zeros(size(tone))];
    end
end
%soundsc(tones,fs)
S = timetable(seconds(0:length(tones)-1)'/fs ,tones);