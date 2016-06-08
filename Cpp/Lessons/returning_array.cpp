#include<iostream>
using namespace std;
int fun(int*,int,int);
int main(){
	int a,b;
	a=15,b=5;
	int array[4];
	array=fun(array[4],a,b);
	cout<<array[0]<<endl;
	cout<<array[1]<<endl;
	cout<<array[2]<<endl;
	cout<<array[3]<<endl;
	return 0;
}

int fun(int arr*,int a,int b){
	arr[0]=a+b;
	arr[1]=a-b;
	arr[2]=a*b;
	arr[3]=a/b;
	arr[4]='\0';
	return arr;
}
