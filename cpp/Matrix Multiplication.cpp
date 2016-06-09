


//Matrix Multiplication

   void main() 
   { 
     int row1=0, 
     col1=1, 
     row2=0, 
     col2=0, 
     **matrix1, 
     **matrix2, 
     **result; 
     clrscr(); 
     printf(" Enter number of row for first matrix "); 
     scanf("%d",&row1); 
     while (col1!=row2) 
     { 
       printf(" Enter number of column for first matrix "); 
       scanf("%d",&col1); 
       printf(" Enter number of row for second matrix "); 
       scanf("%d",&row2); 
       if (col1!=row2) 
       { 
         clrscr(); 
         printf("Column number of first matrix must be same as the row number of second matrix"); 
       } 
     } 
     printf(" Enter number of column for second matrix "); 
     scanf("%d",&col2); 
     matrix1=init(matrix1,row1,col1); 
     matrix2=init(matrix2,row2,col2); 
     /* setting values in matrix */ 
     printf("First matrix \n"); 
       set(matrix1,row1,col1); 
     printf("Second matrix \n"); 
       set(matrix2,row2,col2); 
     /* printint matrix */ 
     clrscr(); 
     printf(" [ First matrix ]\n"); 
       get(matrix1,row1,col1); 
     printf(" [ Second matrix ]\n"); 
       get(matrix2,row2,col2); 
     printf(" [ Multiplication Result ]\n"); 
       result=mul(matrix1,matrix2,row1,col2,col1); 
     get(result,row1,col2); 
     printf("\n\t Thanks from debmalya jash"); 
       getch(); 
     free(matrix1); 
     free(matrix2); 
     fress(result); 
   } /* end main */ 
   /* to initialize matrix */ 
   int** init(int** arr,int row,int col) 
   { 
     int i=0, 
     j=0; 
     arr=(int**)malloc(sizeof(int)*row*col); 
     for(i=0;i<row;i++) 
     { 
     for(j=0;j<col;j++) 
       { 
         *((arr+i)+j)=(int*)malloc(sizeof(int)); 
         *(*(arr+i)+j)=0; 
       } 
     } 
     return arr; 
   } 
   /* to set value in matrix */ 
   int** set(int** arr,int row,int col) 
   { 
     int i=0, 
     j=0, 
     val=0; 
     for(i=0;i<row;i++) 
     { 
       for(j=0;j<col;j++) 
         { 
           printf("Enter value for row %d col %d :",(i+1),(j+1)); 
           scanf("%d",&val); 
           *(*(arr+i)+j)=val; 
         } 
     } 
     return arr; 
   } 
   /* print values of the passed matrix */ 
   void get(int** arr,int row,int col) 
   { 
     int i=0, 
     j=0; 
     for(i=0;i<row;i++) 
     { 
       for(j=0;j<col;j++) 
       { 
         printf("%d\t",*(*(arr+i)+j)); 
       } 
       printf("\n"); 
     } 
   } 
   /* mutiply two matrices and return the resultant matrix */ 
   int** mul(int** arr1,int** arr2,int row,int col,int col1) 
   { 
     int **result, 
     i=0, 
     j=0, 
     k=0; 
     result=init(result,row,col); 
     for(i=0;i<row;i++) 
     { 
       for(j=0;j<col;j++) 
       { 
         for(k=0;k<col1;k++) 
         { 
           printf("%dX%d(%d)",*(*(arr1+i)+k),*(*(arr2+k)+j),(*(*(arr1+i)+k))*(*(*(arr2+k)+j))); 
           *(*(result+i)+j)+=(*(*(arr1+i)+k))*(*(*(arr2+k)+j)); 
           if (k!=(col1-1)) 
             printf("+"); 
         } 
       printf("\t"); 
       } 
       printf("\n"); 
     } 
     return result; 
   } 
