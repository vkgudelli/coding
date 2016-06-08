#program to find the greatest common divisor
import os
num1 = eval(input("enter the first number \n"))
num2 = eval(input("enter the second number \n"))
gcd=1
k=1   #first guess
while k<=num1 and k<=num2 :
	if num1%k==0 and num2%k==0 :
		gcd=k
	k+=1
print("the greatest common divisor is =", gcd)

os.system("pause")