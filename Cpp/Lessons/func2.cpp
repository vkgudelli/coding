#include<iostream>
using namespace std;
int foo(int ,int );
int bar(int l, int m);
int main(){
	int a,b;
	a=5,b=10;
	cout<<"the sum is ="<<foo(a,b)<<endl;
	return 0;
}

int foo(int x, int y){
	return bar(x,y);
} 

int bar(int l,int m){
	return l+m;
}
