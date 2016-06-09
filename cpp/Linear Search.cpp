


//Linear Search

   #include < iostream.h > 
   #include < constream.h > 
   void read(int a[10],int n) 
   { 
     cout<<"reading\n"; 
     for(int i=0;i < n;i++) 
       cin>>a[i]; 
   } 
   void display(int a[10],int n) 
   { 
     for(int i=0;i < n;i++) 
       cout << a[i]<<"\t"; 
   } 
   void linearsearch ( int a[10],int n ) 
   { 
     int k,flag=0; 
     read(a,n); 
     display(a,n); 
     cout<<"\nenter an element to be search\n"; 
     cin>>k; 
     for(int i=0;i < n;i++) 
     { 
       if(a[i]==k) 
         flag=1; 
       break; 
     } 
     if(flag==1) 
       cout << "\nsearching is successful,element is found at position " << i +1 << endl; 
     else 
       cout<<"searching not successful\n"; 
   } 
   void main() 
   { 
     int a[10], n; 
     clrscr(); 
     cout <<"enter n value..\n"; 
     cin>>n; 
     linearsearch(a,n); 
     getch(); 
   } 
