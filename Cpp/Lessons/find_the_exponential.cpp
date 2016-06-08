#include<iostream>
#include "math.h"
using namespace std;
float fac(int);
int main(){
	int x;
	float sum=1.0;
	cout<<"enter the value"<<endl;
	cin>>x;
	for (int i = 1; i < 10; i++) {
		sum = sum+(pow(x,i)/fac(i));
	}
	cout<<"the value is"<<sum<<endl;
	return 0;
}

float fac(int val){
	int i,pro=1;
	for (i = 1; i == val; i++) {
		pro=pro*i;
	}
	return pro;
}
