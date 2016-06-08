//#include<iostream>
#include "math.h"
#include<iostream>
using namespace std;
float sln(float,float,float);
int main(){
	float a,b,c,sol;
	cout<<"Enter the co-efficents in the order of power"<<endl;
	cin>>a>>b>>c;
	sol=sln(a,b,c);
	if (sol==0) {
		cout<<"The root is imaginary\n";
	}else if(sol==1.0){
		cout<<"This equation has a unique solution ="<<-b/(2*a)<<endl;
	}else{
		cout<<"Solution of the quadratic equations are scalene = "<<(-b+sqrt(sol))/(2*a)<<" and "<<(-b-sqrt(sol))/(2*a)<<endl;
	}
	return 0;
}

float sln(float a,float b,float c){
	float D;
	D=b*b-4.*a*c;
	if (D<0) {
		return 0.0;
	}else if(D==0){
		return 1.0;
	}else{
		return D;
	}
}




