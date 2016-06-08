


//Number of Bytes in a Text file

   #include<fstream.h< 
   #include<process.h< 
   #include<stdio.h< 
   #include<iostream.h< 
   #include<process.h< 
   #include<conio.h< 
   main() 
   { 
     clrscr(); 
     int c=0; 
     char ch,file[30]; 
     cout<<"Enter the name of the file:"; 
     gets(file); 
     fstream f1; 
     f1.open(file,ios::in); 
     if(f1.bad()) 
     { 
       cout<<"File can not be opened."; 
       exit(0); 
     } 
     if(f1.good()) 
     { 
       cout<<"The current contents of the file are:"; 
       while(f1) 
       { 
         f1.get(ch); 
         c++; 
         cout<<ch; 
       } 
     } 
     cout<<"Total no. of Bytes are "<<c; 
     f1.close(); 
     cout<<"Press Enter key to continue..."; 
     getch(); 
     return(0); 
   } 
