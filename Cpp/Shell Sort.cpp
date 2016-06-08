


//Shell Sort

   #include< iostream.h > 
   #include< constream.h > 
   void read(int a[10],int n) 
   { 
     cout << "reading\n"; 
     for(int i=0;i < n;i++) 
       cin >> a[i]; 
   } 
   void display(int a[10],int n) 
   { 
     for(int i=0;i < n;i++) 
       cout << a[i] <<"\t"; 
   } 
   void shellsort(int a[10],int n) 
   { 
     int gap=n/2; 
     do 
     { 
       int swap; 
       do 
       { 
         swap=0; 
         for(int i=0;i < n-gap;i++) 
         if(a[i] > a[i+gap]) 
         { 
           int t=a[i]; 
           a[i]=a[i+gap]; 
           a[i+gap]=t; 
           swap=1; 
         } 
       } 
       while(swap); 
     } 
     while(gap=gap/2); 
   } 
   void main() 
   { 
     int a[10]; 
     int n; 
     clrscr(); 
     cout<<"enter n\n"; 
     cin>>n; 
     read(a,n); 
     cout<<"before sorting\n"; 
     display(a,n); 
     shellsort(a,n); 
     cout<<"\nafter sorting\n"; 
     display(a,n); 
     getch(); 
   } 
