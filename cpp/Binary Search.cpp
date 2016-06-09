


//Binary Search

   #include < iostream.h > 
   template < class T > 
   int binarySearch(T a[], int n, T & x) 
   { 
     int left = 0; // left end of segment 
     int right = n - 1; // right end of segment 
     while (left <= right) 
     { 
       int middle = (left + right)/2; // middle of segment 
       if (x == a[middle]) 
         return middle; 
       if (x > a[middle]) 
         left = middle + 1; 
       else 
         right = middle - 1; 
     } 
     return -1; // x not found 
   } 
   int main() 
   { 
     int a[10],n,t; 
     cout<<"Enter the size:"; 
     cin>>n; 
     cout<<"enter the elements in sorted order:"; 
     for(int i=0;i< n;i++) 
       cin >>a[i]; 
     cout<<"enter the element to search:"; 
     cin>>t; 
     int f=binarySearch(a,n,t); 
     if(f==-1) 
       cout<<"element not found"; 
     else 
       cout<<"element found at index:"<   } 
