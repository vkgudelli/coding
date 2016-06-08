


//Binary Search on Java float Array

   public class BinarySearchFloatArrayExample 
   { 
     public static void main(String[] args) 
     { 
       //create float array 
       float floatArray[] = {1.23f,2.10f,4.74f,5.34f}; 
       
       /* 
       To perform binary search on float array use 
       int binarySearch(float[] b, float value) of Arrays class. This method searches 
       the float array for specified float value using binary search algorithm. 
       
       Please note that the float array MUST BE SORTED before it can be searched 
       using binarySearch method. 
       
       This method returns the index of the value to be searched, if found in the 
       array. 
       Otherwise it returns (- (X) - 1) 
       where X is the index where the the search value would be inserted. 
       i.e. index of first element that is grater than the search value 
       or array.length, if all elements of an array are less than the 
       search value. 
       */ 
       
       //sort float array using Arrays.sort method 
       Arrays.sort(floatArray); 
       
       //value to search 
       float searchValue = 4.74f; 
       
       //since 4.74 is present in float array, index of it would be returned 
       int intResult = Arrays.binarySearch(floatArray,searchValue); 
       System.out.println("Result of binary search of 4.74 is : " + intResult); 
       
       //lets search something which is not in float array ! 
       searchValue = 3.33f; 
       intResult = Arrays.binarySearch(floatArray,searchValue); 
       System.out.println("Result of binary search of 3.33 is : " + intResult); 
     } 
   } 
