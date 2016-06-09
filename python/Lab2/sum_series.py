print("program sums the series 1+1/2 +1/3+ .........+1/100 \n")
summ=0
for i in range(1,101):
      summ +=1/i
      if( i%10)==0:  #to print the sum after every to terms.
            print("the summ is ",summ)
print("the final sum is",summ)