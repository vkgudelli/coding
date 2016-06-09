


//Example of Pass-by-Reference

   #include <iostream.h> 
   #include <stdlib.h> 
   int exp (int,int); 
   void readnums (int&, int&); 
   void main () 
   { 
     int b, e; 
     readnums(b,e); 
     cout << b << " to the " << e << " = " << exp(b,e) << endl; 
   } 
   void readnums (int& b, int& e) 
   { 
     int correctInput; 
     cout << "Enter the base and the exponent: "; 
     cin >> b >> e; 
     if (!cin) 
     { 
       cout << "Disaster! Terminating program." << endl; 
       exit(-1); 
     } 
     correctInput = (b >= 0) && (e >= 0); 
     while (!correctInput) 
     { 
       cout << "Something wrong! Try again ..." << endl; 
       cout << "Re-enter base and exponent: "; 
       cin >> b >> e; 
       if (!cin) 
       { 
         cout << "Disaster! Terminating program." << endl; 
         exit(-1); 
       } 
       correctInput = (b >= 0) && (e >= 0); 
     } 
   } 
   int exp (int b, int e) 
   { 
     int result; 
     result = 1; 
     while (e != 0) 
     { 
       result = result * b; 
       e = e - 1; 
     } 
     return(result); 
   } 
