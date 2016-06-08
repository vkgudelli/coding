


//Setting Priorities on the Thread objects

   public class Main 
   { 
     public static void main(String[] args) throws Exception 
     { 
       Thread thread1 = new Thread(new TestThread(1)); 
       Thread thread2 = new Thread(new TestThread(2)); 
       thread1.setPriority(Thread.MAX_PRIORITY); 
       thread2.setPriority(Thread.MIN_PRIORITY); 
       thread1.start(); 
       thread2.start(); 
       thread1.join(); 
       thread2.join(); 
     } 
   } 
   class TestThread implements Runnable 
   { 
     int id; 
     public TestThread(int id) 
     { 
       this.id = id; 
     } 
     public void run() 
     { 
       for (int i = 1; i <= 10; i++) 
       { 
         System.out.println("Thread" + id + ": " + i); 
       } 
     } 
   } 
