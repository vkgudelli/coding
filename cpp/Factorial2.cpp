


//fibinochhi

   #include <iostream.h> 
   // sequence is 0, 1, 1, 2, 3, 5, 8, 13, ... 
   int fib (int i) 
   { 
     int pred, result, temp; 
     
     pred = 1; 
     result = 0; 
     while (i > 0) 
     { 
       temp = pred + result; 
       result = pred; 
       pred = temp; 
       i = i-1; 
     } 
     return(result); 
   } 
   int main () 
   { 
     int n; 
     cout << "Enter a natural number: "; 
     cin >> n; 
     while (n < 0) 
     { 
       cout << "Please re-enter: "; 
       cin >> n; 
     } 
     cout << "fib(" << n << ") = " << fib(n) << endl; 
     return(0); 
   } 
