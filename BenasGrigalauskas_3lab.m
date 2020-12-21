clear all;
close all;
clc;

%Iejimo vektorius
x = 0.1:1/22:1;

%Norimo atsako funkcija
y = (1 + 0.6*sin(2*pi*x/0.7)) + 0.3*sin(2*pi*x))/2;

%Centru reiksmes
c1 = 0.2;
c2 = 0.8;

%Spinduliu reiksmes
r1 = 0.4;
r2 = 0.6;

%Isejimo parametrai
w0 = rand(1);
w1 = rand(1);
w2 = rand(1);

%Iejimo vektoriaus ilgis
xl = length(x);

for n = 1:10000
    for k = 1:xl
        
    end
end

function [F] = gauss(x, c, r) 
    F = exp(-(x-c)^2/(2*r^2));
end