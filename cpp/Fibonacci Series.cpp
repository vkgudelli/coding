


//Fibonacci Series

   #include<iostream.h> 
   #include<conio.h> 
   main() 
   { 
     const unsigned long limit=4294967295; 
     unsigned long next=0; 
     unsigned long last=1; 
     long sum; 
     clrscr(); 
     cout<<"\n\nThis program will print the Fibonacci series :\n\n "; 
     while(next<limit/2) 
     { 
       cout<<last <<" "; 
       sum=next+last; 
       next=last; 
       last=sum; 
     } 
     getch(); 
   } 
