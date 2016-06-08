#include <iostream>
using namespace std;
class roman_type{     
      public: 
      int convert_romanto_decimal(string roman_num){
          int int_num=0;
          for(int i=0;i<roman_num.length();i++){
                  int temp=0;
                  switch (roman_num[i]){
                         case 'M':
                              temp=1000;break;
                         case 'D':
                              temp=500;break;
                         case 'C':
                              temp=100;break;
                         case 'L':
                              temp=50;break;
                         case 'X':
                              temp=10;break;
                         case 'V':
                              temp=5;break;
                         case 'I':
                              temp=1;break;
                         default:
                              cout<<"error number"<<endl;
                         }
                    int_num=int_num+temp;    
          }
          return int_num;
      }
};
int main(){
	string to_convert;
	cout<<"enter a roman number to convert\n";
	cin>>to_convert;
	roman_type R;
	cout<<to_convert<<" = "<<R.convert_romanto_decimal(to_convert)<<endl;
	return 0;
}
