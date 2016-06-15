# include "uiexp.h"
#include<iostream>
using namespace std;
int main(int argc,char **argv){
  int i,j,n,Ni,No;
  valtype delta,theta,l,lamda,ff,L,h,wh,sh,x,y,z,X,Y,Z,CX,CY,CZ,cx,cy,cz,ox,oy,oz,tx,ty,tz;
  valtype DetectorR,DetectorT,DetectorI;
  emInit(argc,argv);
  //environment setup
  Ni=15;
  //No=1;
  delta=0.01;
  //theta=45*M_PI/180.0;
  emMedium F(1.00);
  emMedium G(1.7689);
  emMedium si=getSi();
  //l=0.664;
  l=0.4;
  //lamda=0.9165; 
  lamda=0.7; 
  ff=lamda-l;
  L=2.4;
  n=(int)(((L-ff)/lamda)+0.5);
  h=0.5;
  wh=1;
  sh=0;
  x=L;
  y=L;
  z=h+wh+sh+50*delta;
  X=x+50*delta;
  Y=y+50*delta;
  Z=z+100*delta;
  CX=X/2.0;
  CY=Y/2.0;
  CZ=Z/2.0;
  cx=x/2.0;
  cy=y/2.0;
  cz=z/2.0;
  ox=CX-cx;
  oy=CY-cy;
  oz=CZ-cz+50*delta;
  tx=CX+cx;
  ty=CY+cy;
  tz=CZ+cz+50*delta;
  DetectorR=tz+10*delta;
  DetectorI=tz-10*delta;
  DetectorT=10*delta;
  Vector_3 E=Vector_3(1,0,0);
  Vector_3 k=Vector_3(0,0,-1); 
  //Vector_3 k=Vector_3(0,sin(theta),-1*cos(theta)); 
  //calculation
  uiExperiment task;
  task.SetInternalSpace(Vector_3(0),Vector_3(X,Y,Z));
  task.SetResolution(delta);
  task.SetBC(BC_PML,BC_PML,BC_PML);
  task.AddTFSFBox(Vector_3(ox,oy,oz),Vector_3(tx,ty,tz));
  task.SetFillMedium(F);
  task.SetPlaneWave(k,E);
  //task.SetOblique(No,1);
  //task.AddFluxSet("efficiency",Vector_3(20*delta,20*delta,20*delta),Vector_3(tx+20*delta,ty+20*delta,tz+20*delta));
  task.AddObject(F,GetBox(Vector_3(ox,oy,oz),Vector_3(tx,ty,oz+sh)));
  task.AddObject(G,GetBox(Vector_3(ox,oy,oz+sh),Vector_3(tx,ty,oz+sh+wh)));
  for(i=0;i<n;i++){
     task.AddObject(G,GetBox(Vector_3(ox+ff+i*lamda,oy,oz+sh+wh),Vector_3(ox+ff+i*lamda+l,ty,oz+sh+wh+h)));
  }
  task.AddDetectorSet("f",Vector_3(0,0,DetectorT),Vector_3(X,Y,DetectorI),iVector_3(50,50,50),DET_F|DET_TSTEP);
  //task.AddDetectorSet("p1",Vector_3(0,0,DetectorT),Vector_3(X,Y,DetectorR),iVector_3(1,1,INT_INFTY),DET_F|DET_TSTEP);
  //task.AddDetectorSet("p2",Vector_3(X,Y,DetectorT),Vector_3(X,Y,DetectorR),iVector_3(1,1,INT_INFTY),DET_F|DET_TSTEP);
  //task.AddDetectorSet("i",Vector_3(0,0,DetectorI),Vector_3(X,Y,DetectorI),iVector_3(INT_INFTY,INT_INFTY,1),DET_F|DET_TSTEP);
  //task.AddDetectorSet("f",Vector_3(0,0,DetectorT),Vector_3(X,Y,DetectorR),iVector_3(INT_INFTY,INT_INFTY,1),DET_F);
  task.AddRTASet("flux",2,DetectorR,DetectorT);
  //task.SetPhases("g");
  task.Calculate(Ni);
  task.Analyze();
  return 0;
}
