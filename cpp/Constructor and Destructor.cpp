


//Constructor and Destructor

   #include <iostream> 
   using namespace std; 
   #define SIZE 10 
   class stack 
   { 
     int stck[SIZE]; 
     int topOfStack; 
     public: 
       stack(); // constructor 
       ~stack(); // destructor 
       void push(int i); 
       int pop(); 
   }; 
   // constructor 
   stack::stack() 
   { 
     topOfStack = 0; 
     cout << "Stack Initialized\n"; 
   } 
   // destructor 
   stack::~stack() 
   { 
     cout << "Stack Destroyed\n"; 
   } 
   void stack::push(int i) 
   { 
     if( topOfStack == SIZE ) 
     { 
       cout << "Stack is full.\n"; 
       return; 
     } 
     stck[ topOfStack ] = i; 
     topOfStack++; 
   } 
   int stack::pop() 
   { 
     if( topOfStack == 0 ) 
     { 
       cout << "Stack underflow.\n"; 
       return 0; 
     } 
     topOfStack--; 
     return stck[ topOfStack ]; 
   } 
   int main() 
   { 
     stack a, b; 
     a.push(1); 
     b.push(2); 
     a.push(3); 
     b.push(4); 
     cout << a.pop() << " "; 
     cout << a.pop() << " "; 
     cout << b.pop() << " "; 
     cout << b.pop() << endl; 
     return 0; 
   } 
