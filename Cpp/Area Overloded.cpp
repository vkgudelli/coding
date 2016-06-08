


//Area Overloded

   #include<iostream.h> 
   #include<conio.h> 
   #define phi 3.14 
   int area(int,int); 
   float area(int); 
   void main() 
   { 
     int a,b,c,cho; 
     clrscr(); 
     cout<<"\t What do you want to do?\n"; 
     cout<<"1. area of rectangle"<<endl; 
     cout<<"2. area of circle"<<endl; 
     cout<<"Choice:"; 
     cin>>cho; 
     switch(cho) 
     { 
       case 1: 
         cout<<"Enter lengt and breath (with white space):"; 
         cin>>a>>b; 
         cout<<"Area of RECTANGLE:"<<area(a,b); 
         break; 
       case 2: 
         cout<<"Enter radius:"; 
         cin>>c; 
         cout<<"Area of CIRCLE:"<<area(c); 
         break; 
     } 
     getch(); 
   } 
   int area(int x,int y) 
   { 
     return (x*y); 
   } 
   float area(int s) 
   { 
     return (phi*s*s); 
   } 
