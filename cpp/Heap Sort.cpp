


//Heap Sort

   #include < iostream.h > 
   const int MAX = 10 ; 
   class array 
   { 
     private : 
       int arr[MAX] ; 
       int count ; 
     public : 
       array( ) ; 
       void add ( int num ) ; 
       void makeheap(int ) ; 
       void heapsort( ) ; 
       void display( ) ; 
   } ; 
   array :: array( ) 
   { 
     count = 0 ; 
     for ( int i = 0 ; i < MAX ; i++ ) 
       arr[MAX] = 0 ; 
   } 
   void array :: add ( int num ) 
   { 
     if ( count < MAX ) 
     { 
       arr[count] = num ; 
       count++ ; 
     } 
     else 
       cout << "\nArray is full" << endl ; 
   } 
   void array :: makeheap(int c) 
   { 
     for ( int i = 1 ; i < c ; i++ ) 
     { 
       int val = arr[i] ; 
       int s = i ; 
       int f = ( s - 1 ) / 2 ; 
       while ( s > 0 && arr[f] < val ) 
       { 
         arr[s] = arr[f] ; 
         s = f ; 
         f = ( s - 1 ) / 2 ; 
       } 
       arr[s] = val ; 
     } 
   } 
   void array :: heapsort( ) 
   { 
     for ( int i = count - 1 ; i > 0 ; i-- ) 
     { 
       int ivalue = arr[i] ; 
       arr[i] = arr[0] ; 
       arr[0]=ivalue; 
       makeheap(i); 
     } 
   } 
   void array :: display( ) 
   { 
     for ( int i = 0 ; i < count ; i++ ) 
       cout << arr[i] << "\t" ; 
     cout << endl ; 
   } 
   void main( ) 
   { 
     array a ; 
     a.add ( 11 ) ; 
     a.add ( 2 ) ; 
     a.add ( 9 ) ; 
     a.add ( 13 ) ; 
     a.add ( 57 ) ; 
     a.add ( 25 ) ; 
     a.add ( 17 ) ; 
     a.add ( 1 ) ; 
     a.add ( 90 ) ; 
     a.add ( 3 ) ; 
     a.makeheap(10) ; 
     cout << "\nHeap Sort.\n" ; 
     cout << "\nBefore Sorting:\n" ; 
     a.display( ) ; 
     a.heapsort( ) ; 
     cout << "\nAfter Sorting:\n" ; 
     a.display( ) ; 
   } 
