


//A Simple Example of Inheritance

   #include <iostream> 
   using namespace std; 
   class BaseClass 
   { 
     int i; 
     public: 
       void setInt(int n); 
       int getInt(); 
   }; 
   class DerivedClass : public BaseClass 
   { 
     int j; 
     public: 
       void setJ(int n); 
       int mul(); 
   }; 
   void BaseClass::setInt(int n) 
   { 
     i = n; 
   } 
   int BaseClass::getInt() 
   { 
     return i; 
   } 
   void DerivedClass::setJ(int n) 
   { 
     j = n; 
   } 
   int DerivedClass::mul() 
   { 
     return j * getInt(); 
   } 
   int main() 
   { 
     DerivedClass ob; 
     ob.setInt(10); // load i in BaseClass 
     ob.setJ(4); // load j in DerivedClass 
     cout << ob.mul(); // displays 40 
     return 0; 
   } 
