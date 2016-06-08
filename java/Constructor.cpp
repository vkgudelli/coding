


//Constructor

   class Test 
   { 
     int studentId; 
     public Test(int studentId) 
     { 
       this.studentId=studentId; 
     } 
     public int getId() 
     { 
       return studentId; 
     } 
   } 
   public class Constructor 
   { 
     public static void main(String args[]) 
     { 
       Test t=new Test(50); 
       System.out.println(t.studentId); 
       System.out.println(t.getId()); 
     } 
   } 
