#include <iostream>
#include <fstream>
#include <cstdlib>
#include <cmath>
using namespace std;
int main(){
	int num[20],sqr[20],i;
	ofstream outfile,outfile2;
	outfile.open("test.txt");
	outfile2.open("test2.txt");
	for (i = 0; i < 20; i++) {
		outfile<<i<<" "<<i*i<<endl;
	}
	for (i = 0; i < 20; i++) {
		outfile2<<i<<" "<<sqrt(i)<<endl;
	}
	outfile.close();
	system("gnuplot test.gpl");
	return 0;
}
