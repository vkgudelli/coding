#include<iostream>
using namespace std;
int main(){
	int a;
	cout<<"enter a integer between 1 and 5"<<endl;
	cin>>a;
	switch(a){
		case 1:
			cout<<"your number is 1"<<endl;
			break;
		case 2:
			cout<<"your number is 2"<<endl;
			break;
		case 3:
			cout<<"your number is 3"<<endl;
			break;
		case 4:
			cout<<"your number is 4"<<endl;
			break;
		case 5:
			cout<<"your number is 5"<<endl;
			break;
		default:
			cout<<"this is not a number betwwen one and five"<<endl;
			break;
	}
	return 0;
}
