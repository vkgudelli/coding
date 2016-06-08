


//InsertionSort

   public class InsertionSort 
   { 
     /** 
     * Sorts the given list in place. 
     * Worst Case Performance O(n^2) 
     * Best Case Performance O(n) 
     * Average Case Performance O(n^2) 
     * @param list - int array that you want to sort. 
     */ 
     public static void sortNumbers(int[] list) 
     { 
       //go through the list of the numbers, starting with number two (we say that number one is already sorted) 
       for (int i=1; i< list.length -1; i++) 
       { 
         //store the value of the number we are dealing with (because it's place can be taken by other bigger numbers) 
         int value = list[i]; 
         //define j (its a pointer to the already sorted list, starting at the largest number - back of the sorted list) 
         int j = i-1; 
         //as long as value is lower than the number in sorted list and we are still in the list 
         while (j >= 0 && list[j] > value) 
         { 
           // we are going to move the higher number(from the sorted list) one step to the right (so it will make space for the current value number - witch is lower) 
           list[j+1] = list[j]; 
           //and we move our pointer in the list to next place - lower number 
           j--; 
         } 
         //once we come to the right spot, we insert our value number in there and start with next i value. 
         list[j+1] = value; 
       } 
     } 
   } 
