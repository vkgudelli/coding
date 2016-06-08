#include<iostream>
using namespace std;
int main(){
	int x=3;
	int *num=new int[x];
	*num=45;
	*(num+1)=5;
	*(num+2)=6;
	cout<<num<<endl;
	return 0;
}
