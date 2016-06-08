


//SelecionSort

   public class SelecionSort 
   { 
     /** 
     * Sorts the given list in place. 
     * Worst Case Performance O(n^2) 
     * Best Case Performance O(n^2) 
     * Average Case Performance O(n^2) 
     * Insertion sort can be- and usually is a much faster sorting algorithm, than selection sort. 
     * Selection sort is superior because it does less swaps. 
     * @param list - int array that you want to sort. 
     */ 
     public static void sortNumbers(Integer[] list) 
     { 
       //go through the list 
       for (int i=0; i< list.length;i++) 
       { 
         //define min 
         int min = i; 
         //go through the remaining list and see if there is smaller number 
         for (int j=i+1;j< list.length;j++) 
         { 
           //if there is a smaller number 
           if (list[j] < list[min]) 
           { 
             //remember its place 
             min = j; 
           } 
         } 
         if (i != min) 
         { 
           //swap the min element, moving it to its proper place in the list. 
           int temp = list[min]; 
           list[min] = list[i]; 
           list[i] = temp; 
         } 
       } 
     } 
     /** 
     * Just for testing purposes. 
     */ 
     public static void main(String[] args) 
     { 
       Integer[] list = new Integer[5]; 
       list[0] = 32; 
       list[1] = 24; 
       list[2] = 235; 
       list[3] = 1; 
       list[4] = 0; 
       sortNumbers(list); 
       for (int i = 0;i< list.length;i++) 
       { 
         System.out.println(list[i]); 
       } 
     } 
   } 
