#include<iostream>
using namespace std;
int main(){
	float a,b;
	cout<<"enter two values"<<endl<<"a = ";
	cin>>a;
	cout<<endl<<"b = ";
	cin>>b;
	if (a>b) {
		cout<<"a is grater than b"<<endl;
	}else if(a<b){
		cout<<"a is lessthan b"<<endl;
	}
	else{
		cout<<"a is  b"<<endl;
	}
	cout<<"the sum of a b is = "<<a+b<<endl;
	return 0;
}
