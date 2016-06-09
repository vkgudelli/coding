


//Function overloading

   # include<iostream.h> 
   # include<conio.h> 
   int area(int side) 
   { 
     return side*side; 
   } 
   int area(int l , int b) 
   { 
     return l*b; 
   } 
   void main() 
   { 
     clrscr(); 
     int (*p1)(int); 
     int (*p2)(int,int); 
     p1=area; 
     p2=area; 
     cout<<"Address of area(int)="<<(unsigned int)p1<     cout<<"Address of area(int,int)="<<(unsigned int)p2<     cout<<"Invoking area(int) via p1 "<     cout<<"Invoking area(int,int) via p2 "<     getch(); 
   } 
