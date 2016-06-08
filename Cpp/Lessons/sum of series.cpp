#include <iostream>
#include <cmath>
using namespace std;
int main(){
	int i;
	float sum;
	for (i = 1; i < 101; i++) {
		sum =sum+(1.0/(i*i));
	}
	cout<<"the sum of the series is ="<<sum<<endl;
	return 0;
}
