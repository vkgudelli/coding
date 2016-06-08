


//Factorial

   #include <iostream> 
   #include <iomanip> 
   using namespace std; 
   #define LENGTH 20 
   long double iterativeFunction(unsigned int n); // Iterative solution 
   long double recursiveFunction(unsigned int n); // Recursive solution 
   int main() 
   { 
     unsigned int n; 
     cout << fixed << setprecision(0); 
     cout << setw(10) << "n" << setw(30) << "Factorial of n" 
       << " (Iterative solution)\n" << endl; 
     for( n = 0; n <= LENGTH; ++n) 
       cout << setw(10) << n << setw(30) << iterativeFunction(n) 
         << endl; 
     cout << "Go on with "; 
     cin.get(); 
     cout << setw(10) << "n" << setw(30) << "Factorial of n" 
       << " (Recursive solution)\n" << endl; 
     for( n = 0; n <= LENGTH; ++n) 
       cout << setw(10) << n << setw(30) << recursiveFunction(n) 
         << endl; 
     cout << endl; 
     return 0; 
   } 
  long double iterativeFunction(unsigned int n) // Iterative solution. 
   { 
     long double result = 1.0; 
     for( unsigned int i = 2; i <= n; ++i) 
       result *= i; 
     return result; 
   } 
   long double recursiveFunction(unsigned int n) // Recursive solution. 
   { 
     if( n <= 1) 
       return 1.0; 
     else 
       return recursiveFunction(n-1) * n; 
   } 
