#include<iostream>
using namespace std;
int main(){
	int i,x;
	cout<<"enter the number\n";
	cin>>i;
	x=i;
	do{
		x=x*(i-1);
		i--;
	}while(i>1);
	cout<<"The factorial is "<<x<<endl;
	return 0;
}
