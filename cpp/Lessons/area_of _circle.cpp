#include<iostream>
using namespace std;
const float pi=3.1415;
float findarea(float &);
int main(){
	float r=2.;
	findarea(r);
	cout<<"area of the circle is "<<findarea(r)<<endl;
	cout<<"area of the circle is "<<findarea(r)<<endl;
	return 0;
}

float findarea(float &x){
	float area=pi*x*x;
	x=area/4;
	return area;
}
