//Write text to a file

#include <iostream> 
#include <fstream>
using namespace std;
   const char *FILENAME = "myfile.txt"; 
   int main() 
   { 
     //create output object associated w/ file 
     ofstream fout(FILENAME); 
     cout << "Enter your text: "; 
     char str[100]; 
     cin >> str; 
     //write the text to the file 
     fout << "here is your text\n"; 
     fout << str << endl; 
     //close file 
     fout.close(); 
     ifstream fin(FILENAME); 
     char ch; 
     while (fin.get(ch)) 
     cout << ch; 
     fin.close(); 
     return 0; 
   } 
