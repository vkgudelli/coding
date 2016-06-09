#include "uiexp.h"
 
int main(int argc,char **argv){
 
  emInit(argc,argv);
 
  uiExperiment task;
  task.SetInternalSpace(0,Vector_3(1,1,3));
  task.SetResolution(.025);
  task.SetBC(BC_PER,BC_PER,BC_PML);
 
  //valtype theta=45*M_PI/180.; // angle of incidence, radians. theta=0 corresponds to normal incidence
  Vector_3 k(0,0,-1);
  Vector_3 E(1,0,0); // s polarization
//  Vector_3 E(0,cos(theta),-sin(theta)); // p polarization
   
  //task.AddTFSFPlane(INF,INF,.5);
  task.SetPlaneWave(k,E);
  //task.SetOblique(100,1);
      
  task.AddObject(emMedium(4,2),new Sphere(.375,Vector_3(.5,.5,1.5)));
  task.AddDetectorSet("h",Vector_3(.5,.5,0.25),Vector_3(.5,.5,2.75),iVector_3(1,1,2));
  task.AddRTASet("flux",2,0.25,2.75)                    
  task.CalculateN(2000);
  task.Analyze();
  return 0;
