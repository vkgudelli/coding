#include <iostream>
using namespace std;
class CPolygon {
	protected:
		int width, height;
	public:
		void set_values (int a, int b){ width=a; height=b;}
		//virtual int area(){return 0;}
		int area(int ,int ){return width*height*2;}
		int area (int){ return (width * height); }
		int area (){ return (width * height / 2); }
	private:
		int length;
	friend class CRectangle;
};
int main () {
	CPolygon ppoly1;
	ppoly1.set_values (4,5);
	cout<< ppoly1.area(1,2)<<endl;
	cout << ppoly1.area(5) << endl;
	cout << ppoly1.area() << endl;
	return 0;
}
