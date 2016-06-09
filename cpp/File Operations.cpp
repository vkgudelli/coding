


//File Operations

   #include< iostream.h > 
   #include< conio.h > 
   #include< fstream.h > 
   class student 
   { 
     private: 
       int rno; 
       char name[10]; 
       float fees; 
     public: 
       void getdata() 
       { 
         cout<<"roll number"; 
         cin>>rno; 
         cout<< endl; 
         cout<<"enter name:"; 
         cin >> name; 
         cout<< endl <<"enter fees:"; 
         cin>>fees; 
       } 
       void dispdata() 
       { 
         cout<<"Roll number"<< rno << endl; 
         cout<<"Name"<< name << endl; 
         cout<<"Fees"<< fees; 
       } 
   }; 
   void main() 
   { 
     student s1; 
     clrscr(); 
     ofstream stdfile("c:\\std.txt"); 
     //fstream stdfile; 
     //stdfile.open("c:\\std.txt",ios::out|ios::in); //open file for output 
     char wish; 
     //writing to the file 
     do 
     { 
       s1.getdata(); 
       stdfile.write((char*)& s1,sizeof(student)); 
       cout << "continue ? y/n"; 
       cin >> wish; 
     } 
     while(wish=='y'||wish=='Y'); 
     stdfile.close(); //close the file 
     getch(); 
   } 
