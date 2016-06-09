#include<iostream>
#include <iomanip>
#include "math.h"
using namespace std;
int main(){
	long double pi,x;
	x=10.3456;
	pi=4*atan(1);
	cout<<setprecision(20);
	cout<<pi<<endl;
	cout<<x<<endl;
	return 0;
}
