


//First 10 lines of Pascal's Triangle

   #include <iostream.h> 
   #include <conio.h> 
   #include <iomanip.h> 
   long triangle(int x,int y); 
   int main() 
   { 
     clrscr(); 
     const lines=10; 
     for (int i=0;i<lines;i++) 
      for (int j=1;j<lines-i;j++) 
     cout << setw(2) << " "; 
     for (int j=0;j<=i;j++) 
     cout << setw(4) << triangle(i,j); 
     cout << endl; 
     getch(); 
   } 
   long triangle(int x,int y) 
   { 
     if(x<0||y<0||y>x) 
       return 0; 
     long c=1; 
     for (int i=1;i<=y;i++,x--) 
     c=c*x/i; 
     return c; 
   } 
