


//Sort all characters inside the string

   #include <string> 
   #include <iostream> 
   #include <algorithm> 
   using namespace std; 
   int main() 
   { 
     const string hello("Hello, how are you?"); 
     string s(hello.begin(),hello.end()); 
     // iterate through all of the characters 
     string::iterator pos; 
     for (pos = s.begin(); pos != s.end(); ++pos) 
     { 
       cout << *pos; 
     } 
     cout << endl; 
     sort (s.begin(), s.end()); 
     cout << "ordered: " << s << endl; 
   } 
