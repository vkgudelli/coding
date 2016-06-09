#program to demonstrate how the function works
import os
def sum(i1,i2):
	result=0
	for i in range(i1,i2+1) :
		result += i
	return result

def main():
	n1,n2 =eval(input("enter a limit n1 and n2 to calculate the sum \n"))
	print("sum of numbers", n1, " to", n2, " is ", sum(n1,n2))
	
main()

os.system("pause")