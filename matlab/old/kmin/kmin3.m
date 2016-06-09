% Program to calculate Kmin and Deby Temperature Td: All units in SI
clear;
clc;
% Constant
h=6.62607004e-34;
kb=1.38064852e-23;
NA= 6.022e23;

% V=231e-30;
V=222.50e-30;
M=381.569e-3;
nf=4;
rho = 5.4446e3;

% G=29.38e9;
G=40.30e9;
% B=39.17e9;
B=60.78e9;

vl=((B+(4.0*G)/3.0)/rho)^(1.0/2.0);
vt=(G/rho)^(1.0/2.0);
n=nf/V;
Mavg=M/(nf*NA);

kmin=(kb/2.48)*n^(2.0/3.0)*(vl+2.0*vt); %Cahill’s model
kmin2=(0.87*kb)*(Mavg)^(-2/3.0)*B^(1/2.0)*rho^(1/6.0); %Clarke’s model

String=sprintf('Longitudinal wave velocity = %d',vl);
disp(String);
String=sprintf('Transverse wave velocity  = %d',vt);
disp(String);
String=sprintf('Kmin Cahill’s model = %d',kmin);
disp(String);
String=sprintf('Kmin Clarke’s model = %d',kmin2);
disp(String);
