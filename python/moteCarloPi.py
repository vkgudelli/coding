#program to determine the value of pi using Montecarlo approximation
import os
import random
trials=10000000
hits=0
print("please wait........")
for i in range(trials):
	x=random.random()*2 - 1
	y=random.random()*2 - 1
	
	if (x*x+y*y)<=1 :
		hits +=1
pi=4*hits/trials

print("The value of pi is",format(pi,".4f"))

os.system("pause")
