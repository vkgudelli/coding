#include<iostream>
using namespace std;
struct name_is_this{
	string name;
	char letter;
	int num;
	float var;
	double pi;
}l,obj2;

int main(){
	name_is_this obj3;
	l.num=10;
	obj2.num=20;
	obj3.var=1.6;
	l.letter='a';
	cout<<l.num<<"\t"<<obj2.num<<"\t"<<obj3.var<<endl;
	return 0;
}
