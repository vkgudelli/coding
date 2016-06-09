#include<iostream>
#include "math.h"
using namespace std;
int main(){
	int i,val=1,pro;
	while(val!=0){
		pro=1;
		cout<<"enter the number"<<endl;
		cin>>val;
		for (i = 1; i <= val; i++) {
			pro=pro*i;
		}
		cout<<pro<<endl;
	}
	return 0;
}
