#include<iostream>
using namespace std;
int main(){
	int i;
	float sum;
	for (i = 1; i < 101; i++) {
		sum =sum+(2.*i-1.)/(2.*i);
	}
	cout<<"the sum of the series is ="<<sum<<endl;
	return 0;
}
