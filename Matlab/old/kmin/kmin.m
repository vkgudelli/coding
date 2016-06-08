% Program to calculate Kmin and Deby Temperature Td: All units in SI
clear;
clc;
% Constant
h=6.62607004e-34;
kb=1.38064852e-23;
NA= 6.022e+23;

%Relative constants SrLiAs
% V=277.61e-30; %in m^3
% M=169.48e-3; %in Kg/mol
nf=4;
n=3;
% Relative constants CaLiAs
% V=7.289*4.334*7.945*1e-30;
% M=121.94e-3;
% Relative constants CaLiSb
% V=297.550e-30;
% M=168.7790e-3;

% Relative constants CaLiBi
V=316.120e-30;
M=255.9994e-3;

%Calculated constants
rho=M*nf/(NA*V); %FIXME: rho is not giving accurate value
const=(1/2)*(pi/6)^(1/3);


% Elastic constant matrix
% SrLiAs
% C=[86 19 20 0 0 0;19 91 28 0 0 0;20 28 65 0 0 0; 0 0 0 41 0 0;0 0 0 0 31 0;0 0 0 0 0 36]; %SrLiAs
% CaLiAs
% C=[100.50 16.25 17.39 0 0 0;0 104.95 25.11 0 0 0;0 0 79.23 0 0 0; 0 0 0 45.78 0 0;0 0 0 0 35.37 0;0 0 0 0 0 38.73];
% CaLiSb
% C=[81.69 17.15 17.09 0 0 0;0 89.25 21.55 0 0 0;0 0 73.59 0 0 0; 0 0 0 37.46 0 0;0 0 0 0 31.39 0;0 0 0 0 0 33.11];
% CaLiBi
C=[64.93 12.44 13.11 0 0 0;0 72.64 18.351 0 0 0;0 0 58.75 0 0 0; 0 0 0 31.21 0 0;0 0 0 0 24.02 0;0 0 0 0 0 24.71];

S=inv(C);
C=C.*1e9;
S=S.*1e-9;

% Finding Gr,Gv and Bv, Br  J. Appl. Phys., Vol. 84, No. 9, 1 November 1998.
Gr=15/(4*(S(1,1)+S(2,2)+S(3,3))-4*(S(1,2)+S(1,3)+S(2,3))+3*(S(4,4)+S(5,5)+S(6,6)));
Gv=(1/15)*(C(1,1)+C(2,2)+C(3,3)-C(1,2)-C(1,3)-C(2,3))+(1/5)*(C(4,4)+C(5,5)+C(6,6));
G=(Gv+Gr)/2;

Br=1/((S(1,1)+S(2,2)+S(3,3))+2*(S(1,2)+S(1,3)+S(2,3)));
Bv=(1/9)*(C(1,1)+C(2,2)+C(3,3))+(2/9)*(C(1,2)+C(1,3)+C(2,3));
B=(Bv+Br)/2;

% Finding Young modulus E, Transverse velocity Vs, Longitudinal velocity
% Vl, mean velocity Vm
E=(9*B*G)/((3*B)+G);
Vs=(G/rho)^(0.5);
Vl=((B+(4*G/3))/rho)^(0.5);
Vm=((1/3)*((2/Vs^3)+(1/Vl^3)))^(-0.3333);

% Calculation of Kmin
% V3=(V/12)^(-0.66667);
% Vadd=2*Vs+Vl;
% k_min=const*kb*V3*Vadd;

% Calculation of Debye Temp
% Td=Vm*(h/kb)*((3*n/4*pi)*(NA*rho/M))^(0.3333); %FIXME: n in the Td equation

%Outputs
% disp(rho);
disp(V);
disp(Vl);
disp(Vm);
% disp(Td);
