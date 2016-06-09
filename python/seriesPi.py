#program to calculate the value of pi using the series
import os
import math
sum=0
for i in range(1,30000):
	sum =sum +pow(-1,i+1)/(2*i-1)
pi=4*sum
print("the value of pi is=",pi)
print("real value of pi=", math.pi)
variation=abs(pi-math.pi)
print("variation", variation)

os.system("pause")
	