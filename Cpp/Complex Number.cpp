


//Complex Number

   #include<iostream.h> 
   #include<conio.h> 
   class complex 
   { 
     private: 
       float real,img; 
     public: 
       void assign(float x,float y) 
     { 
       real=x; 
       img=y; 
     } 
     void print() 
     { 
     if(img>=0) 
       cout<< real<<"+"<< img<<"i"; 
     else 
       cout<< real<< img<<"i"; 
     getch(); 
     } 
   }; 
   void add( float a,float b,float c, float d) 
   { 
     float e,f;complex g; 
     e=a+c; 
     f=b+d; 
     g.assign(e,f); 
     g.print(); 
   } 
   void sub( float a,float b,float c, float d) 
   { 
     float e,f;complex g; 
     e=a-c; 
     f=b-d; 
     g.assign(e,f); 
     g.print(); 
   } 
   void mul( float a,float b,float c, float d) 
   { 
     float e,f; complex g; 
     e=a*c-b*d; 
     f=b*c+a*d; 
     g.assign(e,f); 
     g.print(); 
   } 
   void main() 
   { 
     float a,b,c,d; 
     complex x,y,z; 
     clrscr(); 
     cout<<" for complex 1:"; 
     cout<<"real part:"; 
     cin>>a; 
     cout<<"imaginary part:"; 
     cin>>b; 
     cout<<" for complex 2:"; 
     cout<<"real part:"; 
     cin>>c; 
     cout<<"imaginary part:"; 
     cin>>d; 
     x.assign(a,b); 
     y.assign(c,d); 
     cout<<"***original data:***\n"; 
     cout<<"Complex 1:\n";x.print(); 
     cout<<"\n Complex 2:\n";y.print(); 
     cout<<"\n***\n"; 
     cout<<"\n Addition:\n";add(a,b,c,d); 
     cout<<"\n Subtraction:\n";sub(a,b,c,d); 
     cout<<"\n Multipication:\n";mul(a,b,c,d); 
   } 
