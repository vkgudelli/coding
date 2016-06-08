#include<iostream>
using namespace std;
int main(){
	int var[3]={1,2,3};
	var[3]='\0';
	int *mypoint=var;
	cout<<var<<endl;
	cout<<&var<<endl;
	cout<<mypoint<<endl;
	cout<<(mypoint+1)<<endl;
	return 0;
}
