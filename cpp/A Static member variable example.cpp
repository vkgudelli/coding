


//A Static member variable example.

   #include <iostream> 
   using namespace std; 
   class myclass 
   { 
     static int i; 
     public: 
       void setInt(int n) 
       { 
         i = n; 
       } 
       int getInt() 
       { 
         return i; 
       } 
   }; 
   int myclass::i; // Definition of myclass::i. i is still private to myclass. 
   int main() 
   { 
     myclass object1, object2; 
     object1.setInt(10); 
     cout << "object1.i: " << object1.getInt() << '\n'; // displays 10 
     cout << "object2.i: " << object2.getInt() << '\n'; // also displays 10 
     return 0; 
   } 
