#program to demonstrate the if ..else statements in python
import os
import math
r=eval(input("enter the radius of the circle \n"))
if r>=0 :
	print("area of the circle with radius ",r,"is",format(math.pi*r**2,".4f")) #just added a formatting statement to show only 4 decimal points
else :
	print("the radios is negative the area will not exist")

os.system("pause")