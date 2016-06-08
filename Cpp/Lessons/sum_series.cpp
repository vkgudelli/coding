#include<iostream>
using namespace std;
int main(){
	double x=1;
	int i;
	for (i = 2; i < 100; i++) {
		x=x+1.0/i;
	}
	cout<<"this sum is"<<x<<endl;
	return 0;
}
