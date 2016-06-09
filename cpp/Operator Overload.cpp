


//Operator Overload

   #include <cstdlib> 
   #include <new> 
   using namespace std; 
   class MyClass 
   { 
     int x, y; 
     public: 
       MyClass() 
       { 
         x = y = 0; 
       } 
       MyClass(int lg, int lt) 
       { 
         x = lg; 
         y = lt; 
       } 
       void show() 
       { 
         cout << x << " "; 
         cout << y << endl; 
       } 
       void *operator new(size_t size); 
       void operator delete(void *p); 
       void *operator new[](size_t size); 
       void operator delete[](void *p); 
   }; 
   // overloaded new operator 
   void *MyClass::operator new(size_t size) 
   { 
     void *p; 
     cout << "In overloaded new.\n"; 
     p = malloc(size); 
     if(!p) 
     { 
       bad_alloc ba; 
       throw ba; 
     } 
     return p; 
   } 
   // delete operator overloaded 
   void MyClass::operator delete(void *p) 
   { 
     cout << "In overloaded delete.\n"; 
     free(p); 
   } 
   // new operator overloaded for arrays. 
   void *MyClass::operator new[](size_t size) 
   { 
     void *p; 
     cout << "Using overload new[].\n"; 
     p = malloc(size); 
     if( !p ) 
     { 
       bad_alloc ba; 
       throw ba; 
     } 
     return p; 
   } 
   // delete operator overloaded for arrays. 
   void MyClass::operator delete[](void *p) 
   { 
     cout << "Freeing array using overloaded delete[]\n"; 
     free(p); 
   } 
   int main() 
   { 
     MyClass *objectPointer1, *objectPointer2; 
     int i; 
     try 
     { 
       objectPointer1 = new MyClass (10, 20); 
     } 
     catch (bad_alloc xa) 
     { 
       cout << "Allocation error for objectPointer1.\n"; 
       return 1;; 
     } 
     try 
     { 
       objectPointer2 = new MyClass [10]; // allocate an array 
     } 
     catch (bad_alloc xa) 
     { 
       cout << "Allocation error for objectPointer2.\n"; 
       return 1; 
     } 
     objectPointer1->show(); 
     for( i = 0; i < 10; i++) 
       objectPointer2[i].show(); 
     delete objectPointer1; // free an object 
     delete [] objectPointer2; // free an array 
     return 0; 
   } 
