


//Polymorphism

   class Box 
   { 
     int w,h; 
     void info() 
     { 
       System.out.println("This is a simple box"); 
       System.out.println("width = "+ w + " hieght "+ h); 
     } 
   } 
   class WoddenBox extends Box 
   { 
     int life; 
     void info( ) 
     { 
       System.out.println("This is a Wodden box"); 
     } 
   } 
   class SteelBox extends Box 
   { 
     int wg; 
     void info( ) 
     { 
       System.out.println("This is a steel box"); 
     } 
   } 
   class LargeWoddenBox extends WoddenBox 
   { 
     void info() 
     { 
       System.out.println("This is a Huge Wodden box"); 
     } 
   } 
   class BoxDemo 
   { 
     public static void main ( String ary[ ] ) 
     { 
       Box x; 
       Box b1 =new Box( ); 
       WoddenBox wb=new WoddenBox( ); 
       SteelBox s1=new SteelBox( ); 
       LargeWoddenBox p1=new LargeWoddenBox( ); 
       b1.info( ); 
       wb.info( ); 
       s1.info( ); 
       p1.info( ); 
     } 
   } 
