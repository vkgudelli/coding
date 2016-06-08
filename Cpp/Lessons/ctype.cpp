#include <iostream>
#include <cctype>
using namespace std;
int main(){
	string name1,name2;
	char name3[5],name4[5];
	name1="hello";
	name2="HELLO";
	//to convert name2 into lowercase and store it in name3.
	for (int i = 0; i < 5; i++) {
		name3[i]=tolower(name2[i]);
	}
	name3[5]='\0';
	cout<<name3<<endl;
	//to convert name1 to uppercase and store it name4
	for (int j = 0; j < 5; j++) {
		name4[j]=toupper(name1[j]);
	}
	name4[5]='\0';
	cout<<name4<<endl;
	return 0;
}
