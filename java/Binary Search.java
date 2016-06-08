


//	Binary Search

   class binary_search 
   { 
     public static void main(String args[])throws IOException 
     { 
       int i; 
       InputStreamReader x=new InputStreamReader(System.in); 
       BufferedReader y=new BufferedReader(x); 
       int a[]=new int[10]; 
       System.out.println("ENTER THE NUMBER TO BE SEARCHED"); 
       int n=Integer.parseInt(y.readLine()); 
       System.out.println("ENTER 10 NUMBERS FOR THE ARRAY"); 
       
       for(i=0;i<10;i++) 
       { 
         a[i]=Integer.parseInt(y.readLine()); 
       } 
       System.out.println("CONTENTS OF ARRAY ARE"); 
       for(i=0;i<10;i++) 
       { 
         System.out.println(a[i]); 
       } 
       System.out.println("NUMBER TO BE SEARCHED IS "+n); 
       int p=-1,mid,l=0,u=9; 
       while(l<=u) 
       { 
         mid=(l+u)/2; 
         if(a[mid]==n) 
         { 
           p=mid; 
           break; 
         } 
         else if(n> a[mid]) 
         { 
           l=mid+1; 
         } 
         else if(n < a[mid]) 
         { 
           u = mid-1; 
         } 
       } 
       if(p == -1) 
       { 
         System.out.println("NUMBER DOES NOT EXIST IN THE ARRAY"); 
       } 
       else 
       { 
         System.out.println("NUMBER EXISTS AT THE INDEX "+p); 
       } 
     } 
   } 
