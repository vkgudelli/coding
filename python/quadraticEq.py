#Program to find the roots of a quadratic eqn
import os 																		
import math
a,b,c = eval(input("enter the coefficients of the quadratic equation \n"))
e=(b**2)-(4*a*c)
print ("discriminant D =",e)

if a==0 :
	print ("this is not a quadratic equation how ever the root is =",-c/b)
elif e==0 :
	print ("the roots is real and unique ",-b/(2*a))
elif e>0 :
	print ("the roots are real and distinct",(-b+math.sqrt(e))/(2*a), "and", (-b-math.sqrt(e))/(2*a))
else :
	print ("the roots are imaginary ",(-b+math.sqrt(-e))/(2*a), "i and",(-b-math.sqrt(-e))/(2*a), "i"  )

os.system("pause")
