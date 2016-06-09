   #include <algorithm> 
   #include <cstdlib> 
   #include <fstream> 
   #include <functional> 
   #include <iostream> 
   #include <iterator> 
   #include <vector> 
   using namespace std; 
   template <class T> 
   void print(T & c) 
   { 
     for( typename T::iterator i = c.begin(); i != c.end(); i++ ) 
     { 
       std::cout << *i << endl; 
     } 
   } 
   int main() 
   { 
     vector <int> output_data( 10 ); 
     generate( output_data.begin(), output_data.end(), rand ); 
     transform( output_data.begin(), output_data.end(),output_data.begin(), bind2nd( modulus<int>(), 10 ) ); 
     ofstream out( "data.txt" ); 
     if( !out ) 
     { 
       cout << "Couldn't open output file\n"; 
       return 0; 
     } 
     copy( output_data.begin(), output_data.end(),ostream_iterator<int>( out, "\n" ) ); 
     out.close(); 
     ifstream in( "data.txt" ); 
     if( !in ) 
     { 
       cout << "Couldn't open input file\n"; 
       return 0; 
     } 
     vector<int> input_data( (istream_iterator<int>( in )),istream_iterator<int>() ); 
     in.close(); 
     print( output_data ); 
     print( input_data ); 
   } 
