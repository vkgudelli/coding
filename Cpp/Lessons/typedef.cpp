#include <iostream>
using namespace std;
struct str_1{
	int age;
	string name;
	char inttial;
};
struct str_2{
	str_1 obj_1; 
}obj_2;
int main(){
	obj_2.obj_1.name="abc";
	cout<<obj_2.obj_1.name<<endl;
	return 0;
}
