#include <iostream>
using namespace std;
float a1,an,n,d,summ=0;
class arith_prog{
	public:
		float sum(){
			n=((an-a1)/d)+1.;
			if (n>0) {
				summ=(n/2.)*(an+a1);
			}
			return summ;
		}
};
int main(){
	arith_prog obj_1;
	cout<<"enter a1,an and d\n";
	cin>>a1>>an>>d;
	cout<<obj_1.sum()<<endl;
	return 0;

}
