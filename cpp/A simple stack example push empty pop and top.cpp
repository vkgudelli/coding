


//A simple stack example: push, empty, pop and top

   #include <iostream> 
   #include <stack> 
   using namespace std; 
   int main() 
   { 
     stack<char> stackObject; 
     stackObject.push('A'); 
     stackObject.push('B'); 
     stackObject.push('C'); 
     stackObject.push('D'); 
     while(!stackObject.empty()) 
     { 
       cout << "Popping: "; 
       cout << stackObject.top() << endl; 
       stackObject.pop(); 
     } 
     return 0; 
   } 
