#include<iostream>
using namespace std;
int main(){
	int i,j;
	float sum=0.5;
	for (i = 1,j=2; i < 100,j<101; i++,j++) {
		sum =sum+(i*2.0+1.0)/(j*2.0);
	}
	cout<<"the sum of the series is ="<<sum<<endl;
	return 0;
}
