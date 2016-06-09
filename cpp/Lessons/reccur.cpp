#include<iostream>
using namespace std;
int func1(int);
int main(){
	int a;
	cout<<"enter a number to find the factorial \n";
	cin>>a;
	cout<<"the factorial of "<<a<<" is "<<func1(a)<<endl;	
	return 0;
}

int func1(int n){
	if (n>1) {
		return (n*func1(n-1));
	}else{
		return 1;
	}
}


