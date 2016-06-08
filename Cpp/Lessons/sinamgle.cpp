#include<iostream>
#include"math.h"
using namespace std;
int main(){
	int i;
	const float pi=4*atan(1);
	for (i = 0; i < 91; i++) {
		cout<<"angle ="<<i<<", sin("<<i<<")="<<sin(i*pi/180)<<endl;
	}
	return 0;
}
