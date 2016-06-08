% INITIALIZE MATLAB
close all; 
clc;
clear all;
% UNITS
meters      = 1;
centimeters = 1e-2 * meters;
millimeters = 1e-3 * meters;
inches      = 2.54 * centimeters;
feet        = 12 * inches;
seconds     = 1;
hertz       = 1/seconds;
kilohertz   = 1e3 * hertz;
megahertz= 1e6 * hertz;
gigahertz   = 1e9 * hertz;
% CONSTANTS
e0 = 8.85418782e-12 * 1/meters;
u0 = 1.25663706e-6 * 1/meters;
N0 = sqrt(u0/e0);
c0 = 299792458 * meters/seconds;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% FDTD PARAMETERS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Nx    = 100;
Ny    = 100;
NPML  = [20 21 22 23];
dx    = 0.1 * meters;
dy    = 0.1 * meters;
dt    = 1.6e-10 * seconds;
tau   = 3.3e-9 * seconds;
STEPS = 500;


 %OPEN A FIGURE WINDOW
 figure('Color','w');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PML
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Nx2 = 2*Nx;
Ny2 = 2*Ny;
sigx = zeros(Nx2,Ny2);
for nx = 1 : 2*NPML(1)
nx1 = 2*NPML(1) - nx + 1;
sigx(nx1,:) = (0.5*e0/dt)*(nx/2/NPML(1))^3;
end
for nx = 1 : 2*NPML(2)
nx1 = Nx2 - 2*NPML(2) + nx;
sigx(nx1,:) = (0.5*e0/dt)*(nx/2/NPML(2))^3;
end
sigy = zeros(Nx2,Ny2);
for ny = 1 : 2*NPML(3)
ny1 = 2*NPML(3) - ny + 1;
sigy(:,ny1) = (0.5*e0/dt)*(ny/2/NPML(3))^3;
end
for ny = 1 : 2*NPML(4)
ny1 = Ny2 - 2*NPML(4) + ny;
sigy(:,ny1) = (0.5*e0/dt)*(ny/2/NPML(4))^3;
end
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %% COMPUTE UPDATE COEFFICIENTS
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
URxx=ones(Nx,Nx);
URyy=ones(Ny,Ny);
ERzz=ones(Nx,Nx);
sigHx = sigx(1:2:Nx2,2:2:Ny2);
sigHy = sigy(1:2:Nx2,2:2:Ny2);
mHx0 = (1/dt) + sigHy/(2*e0);
mHx1 = ((1/dt) - sigHy/(2*e0))./mHx0;
mHx2 = - c0./URxx./mHx0;
mHx3 = - (c0*dt/e0) * sigHx./URxx ./ mHx0;
sigHx = sigx(2:2:Nx2,1:2:Ny2);
sigHy = sigy(2:2:Nx2,1:2:Ny2);
mHy0 = (1/dt) + sigHx/(2*e0);
mHy1 = ((1/dt) - sigHx/(2*e0))./mHy0;
mHy2 = - c0./URyy./mHy0;
mHy3 = - (c0*dt/e0) * sigHy./URyy ./ mHy0;
sigDx = sigx(1:2:Nx2,1:2:Ny2);
sigDy = sigy(1:2:Nx2,1:2:Ny2);
mDz0 = (1/dt) + (sigDx + sigDy)/(2*e0)+ sigDx.*sigDy*(dt/4/e0^2);
mDz1 = (1/dt) - (sigDx + sigDy)/(2*e0)- sigDx.*sigDy*(dt/4/e0^2);
mDz1 = mDz1 ./ mDz0;
mDz2 = c0./mDz0;
mDz4 = - (dt/e0^2)*sigDx.*sigDy./mDz0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% COMPUTING THE SOURCE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%COMPUTE SOURCE PARAMETERS
 t0=5*tau;
 %COMPUTE THE SOURCE
 t=(0:STEPS-1)*dt;
 s =dx/(2*c0)+dt/2;
 nz_src=2;
 Esrc=exp(-((t-t0)/tau).^2);
 A =-sqrt(ERzz(nz_src)/URxx(nz_src));
 Hsrc=A*exp(-((t-t0+s)/tau).^2);
 
 %%Initialize
 Hx=0;Hy=0;Dz=0;Ez=0;
 CEx=0;DEy=0;CHZ=0;
 ICEx=0;ICEy=0;IDz=0;

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 