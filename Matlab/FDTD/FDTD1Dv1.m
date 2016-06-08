%ftdtd_step2.m
%
% Add Aa simple gaussian soft source.
%
%INITIALIZE MATLAB
close all;
clc;
clear all;

%units
 meters=1;
 centimeters= 1e-2*meters;
 millimeters=1e-3*meters;
 inches=2.54*centimeters;
 feet=12*inches;

 second=1;
 hertz=1/second;
 kilohertz=1e3*hertz;
 megahertz=1e6*hertz;
 gigahertz=1e9*hertz;

 %CONSTANTS 
 c0=299792458*meters/second;
 e0=8.8541878176e-12*1/meters;
 u0=1.2566370614e-6*1/meters;

 %OPEN A FIGURE WINDOW
 figure('Color','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% DASHBOARD
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%SOURCE PARAMETERS
 fmax=5.0*gigahertz;
%$GRID PARAMETERS
nmax=1;
NLAM=10;
NBUFZ=[100,100];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% COMPUTE OPTIMIZED GRID
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%NORMAL RESOLUTION
lam0=c0/fmax;
dz=lam0/nmax/NLAM;

%COMPUTE GRID SIZE
Nz=sum(NBUFZ)+3;

% COMPUTE GRID AXIS
 za=[0:Nz-1]*dz;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% BUILD DEVICE ON GRID
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%INITIALIZE PARAMETER FOR FREE SPACE
ER=ones(1,Nz);
UR=ones(1,Nz);


 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% BUILD DEVICE ON GRID
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%COMPUTING THE SOURCE (dt)
nbc=sqrt(UR(1)*Er(1));
dt= nbc*dz/(2*c0);

%COMPUTE SOURCE PARAMETERS
 tau=0.5/fmax;
 t0=5*tau;


 %COMPUTE THE NUMBER OF TIME STEPS

 tprop = nmax*Nz*dz/c0;
 t= 2*t0+3*tprop;
 STEPS=ceil(t/dt);

 %COMPUTE THE SOURCE
 t=[0:STEPS-1]*dt;
 nz_src=round(Nz/2);
 Esrc=exp(-((t-t0)/tau).^2);

 plot(t,Esrc);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% INITIALIZE FDTD PARAMETERS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %COMPUTE UPDATE COEFFICIENT

 mEy=(c0*dt)./ER;
 mHx=(c0*dt)./UR;

 %INITIALIZE FIELDS

 Ey=zeros(1,Nz);
 Hx=zeros(1,Nz);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PERFORM FDTD ANALYSIS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
% MAIN LOOP --ITERATE OVER TIME
%
for T=1:STEPS

	%update H from E
	for nz=1:Nz-1
		Hx(nz)=Hx(nz)+mHx(nz)*(Ey(nz+1)-Ey(nz))/dz;
	end
		Hx(Nz)=Hx(Nz)+mHx(Nz)*(0.0-Ey(Nz))/dz;
	%update H from E
	Ey(1)=Ey(1)+mEy(1)*(Hx(1)-0.0)/dz;
	for nz=2:Nz
		Ey(nz)=Ey(nz)+mEy(nz)*(Hx(nz)-Hx(nz-1))/dz;
	end

	%inject E source
	Ey(nz_src)=Ey(nz_src)+Esrc(T);

	% Show Status
	if ~mod(T,1)

		%show fields
		draw1d(ER,Ey,Hx,dz);
		xlim([dz,Nz*dz]);
		xlabel('z');
		title(['Field at step' num2str(T) 'of' num2str(STEPS)]);
		%draw graphics
		drawnow;
	end
end 