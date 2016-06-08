#include<iostream>
using namespace std;
int main(){
	int i,j;
	string name[3];
	int age[3];
	float percent[3];
	for (i = 0; i < 3; i++) {
		cout<<"enter the name of the student"<<endl;
		cin>>name[i];
		cout<<"Enter the age of the student"<<endl;
		cin>>age[i];
		cout<<"enter the percentage of the student"<<endl;
		cin>>percent[i];
	}
	for (j = 0; j < 3; j++) {
		cout<<"No:"<<j+1<<", Name:"<<name[j]<<", age:"<<age[j]<<", percentage:"<<percent[j]<<endl;
	}

	return 0;
}

