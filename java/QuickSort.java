


//QuickSort

   public class QuickSort 
   { 
     /** 
     * Sorts the given list in place. 
     * Worst Case Performance O(n^2) 
     * Best Case Performance O(nlogn) 
     * Average Case Performance O(nlogn) 
     * @param list - int array that you want to sort. 
     */ 
     public void sortNumbers(int[] list) 
     { 
       Quicksort(list, 0,list.length-1); 
     } 
     public void Quicksort(int[] A, int start, int end) 
     { 
       if (start < end) 
       { 
         //we partition the list and get back two lists (lower than pivot, and bigger than pivot) 
         int middle = Partition(A, start, end); 
         //we then do a recursive call to sort out lower numbers than pivot 
         Quicksort(A, start, middle-1); 
         //and we do same with higher numbers than pivot 
         Quicksort(A, middle+1, end); 
         //NOTE: pivot is already in it's place, where he supposed to be (in a sorted list). 
       } 
     } 
     public int Partition (int[] A, int start, int end) 
     { 
       int pivot = A[end]; //we define pivot (the number we will be comparing other numbers to 
       int lo = start-1; // we define low value index 
       for (int hi = start; hi < end; hi++) 
       { 
         //we go throug the list, compare other numbers to pivot 
         if (A[hi] <= pivot) 
         { 
           //if pivot is lower that the current number 
           lo++; //we increase lo value 
           //and exchange current lo with hi (so we will have all lower numbers than pivot on one side) 
           int temp = A[lo]; 
           A[lo] = A[hi]; 
           A[hi] = temp; 
         } 
       } 
       //at the end we put in pivot right inbetween low and high values and we know that pivot element is in the right place. 
       int temp = A[lo+1]; 
       A[lo+1] = A[end]; 
       A[end] = temp; 
       return lo+1; //we return the pivot elements place 
     } 
     public static void main(String[] args) 
     { 
       int[] list = {156,344,54,546,767,23,34,64,234,
654,234,65,234,65,87,3,5,76,24,2,3,7,
9,5,34,32,4525,345,0}; 
       QuickSort qs = new QuickSort(); 
       qs.sortNumbers(list); 
       for (int i = 0;i < list.length;i++) 
       { 
         System.out.println(list[i]); 
       } 
     } 
   } 
