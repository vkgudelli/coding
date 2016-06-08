


//LinkedList Example

   public class SimpleJavaLinkedListExample 
   { 
     public static void main(String[] args) 
     { 
       
       //create LinkedList object 
       LinkedList lList = new LinkedList(); 
       
       //add elements to LinkedList 
       lList.add("1"); 
       lList.add("2"); 
       lList.add("3"); 
       lList.add("4"); 
       lList.add("5"); 
       
       /* 
       * Please note that primitive values can not be added into LinkedList 
       * directly. They must be converted to their corrosponding wrapper class. 
       */ 
       
       System.out.println("LinkedList contains : " + lList); 
     } 
   } 
