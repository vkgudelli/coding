


//Accessing Static members without an object

   #include <iostream> 
   using namespace std; 
   class Cat 
   { 
     public: 
       Cat(int age):itsAge(age){count++; } 
       virtual ~Cat() { count--; } 
       virtual int GetAge() { return itsAge; } 
       virtual void SetAge(int age) { itsAge = age; } 
       static int count; 
     private: 
       int itsAge; 
   }; 
   int Cat::count = 0; 
   void TelepathicFunction(); 
   int main() 
   { 
     const int MaxCats = 5; int i; 
     Cat *CatHouse[MaxCats]; 
     for (i = 0; i< MaxCats; i++) 
     { 
       CatHouse[i] = new Cat(i); 
       TelepathicFunction(); 
     } 
     for ( i = 0; i< MaxCats; i++) 
     { 
       delete CatHouse[i]; 
       TelepathicFunction(); 
     } 
     return 0; 
   } 
   void TelepathicFunction() 
   { 
     cout << "There are "; 
     cout << Cat::count << " cats alive!\n"; 
   } 
