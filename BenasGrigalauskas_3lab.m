clear all;
close all;
clc;

%Iejimo vektorius
x = 0.1:1/22:1;

%Norimo atsako funkcija
y = (1 + 0.6*sin(2*pi*x/0.7)) + (0.3*sin(2*pi*x))/2;

%Centru reiksmes
c1 = 0.2;
c2 = 0.8;

%Spinduliu reiksmes
r1 = 0.4;
r2 = 0.6;

%Isejimo parametrai
b = rand(1);
w1 = rand(1);
w2 = rand(1);

%Iejimo vektoriaus ilgis
xl = length(x);

%Mokymosi greitis
eta = 0.1;

%Mokymosi ciklas
for n = 1:10000
    for k = 1:xl
        f1 = gauss(x(k), c1, r1);   %Spindulio tipo funkcija 1
        f2 = gauss(x(k), c1, r1);   %Spindulio tipo funkcija 2
        
        yout(k) = f1*w1 + f2*w2 + b;  %Ieskomas rezultatas
        err = y(k) - yout(k);          %Skaiciuojama klaida
                
        %Svoriu atnaujinimas
        w1 = w1 + eta*err*f1;
        w2 = w2 + eta*err*f2;
        b = b + eta*err;
    end
end

%Rezultatu atvaizdavimas
figure(1);
hold on
plot(x,y)
plot(x,yout)
hold off;
xlabel('x');
ylabel('y');
title('Gauti rezultatai');
legend('Tikroji funkcija','Gauta funkcija naudojant SBF tinkla');

function [F] = gauss(x, c, r) 
    F = exp(-(x-c)^2/(2*r^2));
end