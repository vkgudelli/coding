#include<iostream>
using namespace std;
struct reg{
	string name;
	int age;
};
int main(){
	reg list;
	reg *list2=&list;
	cout<<"enter the name and age\n";
	cin>>list.name>>list.age;
	cout<<"name is ="<<list.name<<"\nage is ="<<list.age<<endl;
	//operator -> is used to locate a variable with in the structure using pointer
	cout<<list2->age<<endl;
	return 0;
}
