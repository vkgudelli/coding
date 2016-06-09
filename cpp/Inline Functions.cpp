


//Inline Functions

   #include <iostream> 
   using namespace std; 
   inline double Sum(const double * Numbers, const int Count) 
   { 
     double s = 0; 
     for(int i = 0; i < Count; i++) 
       s += Numbers[i]; 
     return s; 
   } 
   int main() 
   { 
     double Nbr[] = { 15.66, 18, 25, 128.62, 12.06, 22.18 }; 
     double Total = Sum(Nbr, 6); 
     cout << "Sum = " << Total << endl; 
     return 0; 
   } 
     If you first declare a function that would be defined somewhere else, when implementing the function, you can type or omit the inline keyword: 
   #include <iostream> 
   using namespace std; 
   inline double Sum(const double * Numbers, const int Count); 
   int main() 
   { 
     double Nbr[] = { 15.66, 18, 25, 128.62, 12.06, 22.18 }; 
     double Total = Sum(Nbr, 6); 
     cout << "Sum = " << Total << endl; 
     return 0; 
   } 
   inline double Sum(const double * Numbers, const int Count) 
   { 
     double s = 0; 
     for(int i = 0; i < Count; i++) 
       s += Numbers[i]; 
     return s; 
   } 
