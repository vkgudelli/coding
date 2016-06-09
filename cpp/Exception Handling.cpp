


//Exception Handling

   #include <iostream> 
   using namespace std; 
   int main() 
   { 
     unsigned int TypeOfLoan = 0; 
     const char *LoanType[] = 
     { "Personal", 
       "Car", 
       "Furniture", 
       "Musical Instrument", 
       "Boat" 
     }; 
     try 
     { 
       cout << "Enter the type of loan\n"; 
       for(int i = 0; i < 4; i++) 
         cout << i + 1 << ") " << LoanType[i] << endl; 
       cout << "Your choice: "; 
       cin >> TypeOfLoan; 
       if( TypeOfLoan < 1 || TypeOfLoan > 5 ) 
         throw "Number out of range\n"; 
       cout << "\nType of Loan: " << LoanType[TypeOfLoan] << endl; 
     } 
     catch(const char* Msg) 
     { 
       cout << "Error: " << Msg << endl; 
     } 
     catch(...) 
     { 
       cout << "\nSomething went wrong\n\n"; 
     } 
     return 0; 
   } 
