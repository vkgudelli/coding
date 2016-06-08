#include<iostream>
using namespace std;
int main(){
	int i,j,k,m,n;
	char pass[4];
	char letters[]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
	string password;
	cout<<"Enter a 4 letter password\n";
	cin>>password;
	for (k=0;k<26;k++) {
		pass[0]=letters[k];
		for (j=0;j<26;j++) {
			pass[1]=letters[j];
			for (i=0;i<26;i++) {
				pass[2]=letters[i];
				for (n = 0; n < 26; n++) {
					pass[3]=letters[n];
					pass[4]='\0';
					if (pass==password) {
						cout<<"your password has been found it is = "<<pass<<endl;
						i=27;j=27;k=27;break;
					}else{
						cout<<pass<<endl;
					}
				}
			}
		}
	}
	return 0;
}
