#include<iostream>
#include <cmath>
using namespace std;
int main(){
	float x1,y1,x2,y2,x3,y3,a,b,c,r,x,y,l,m;
	cout<<"enter the co-ordinates"<<endl;
	cin>>x1>>y1;
	cout<<"enter the co-ordinates"<<endl;
	cin>>x2>>y2;
	cout<<"enter the co-ordinates"<<endl;
	cin>>x3>>y3;
	a=pow(x2-x1,2)+pow(y2-y1,2);
	b=pow(x2-x3,2)+pow(y2-y3,2);
	c=pow(x3-x1,2)+pow(y3-y1,2);
	l=(y2-y1)/(x2-x1);
	m=(y3-y2)/(x3-x2);
	if (a>b&&a>c) {
		r=a;x=b;y=c;
	}else if (b>a&&b>c) {
		r=b;x=a;y=c;
	}else{
		r=c;x=a;y=b;
	}
	if(l==m){
		cout<<"these points belongs to a straight line\n";
	}else if (a==b && b==c && c==a) {
		cout<<"this is an equilateral triangle\n";
	}else if(a==b||a==c||b==c){
		cout<<"this is a isosceles triangle\n";
	}else if(r==x+y){
		cout<<"this is a right angled triangle\n";
	}else{
		cout<<"this is a scalene triangle\n";
	}

	return 0;
}
