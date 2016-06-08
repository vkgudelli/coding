#program to find the factorial of a number
import os
num       =eval(input("enter the number which you want to find the factorial of \n"))
factorial =1
for i in range(num,1,-1) :
	factorial *=i
print("factorial of the number ", num, "is", factorial)

os.system("pause")