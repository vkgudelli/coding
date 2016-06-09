#include <iostream>
using namespace std;
enum months{
	jan,feb,mar,apr
	};
int main(){
	months month;
	month =feb;
	if (month==feb) {
		cout<<"this is january\n";
	}
	return 0;
}
