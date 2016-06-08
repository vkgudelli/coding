#program to find the roots of a quadratic equation.
import math
a,b,c=eval(input("enter the coefficents a, b, c separated by commas \n"))
d2=b**2-(4*a*c)
if a==0:
      print("its not a quadratic equation how ever the root is",c/b)
elif d2==0:
      print("the equation has real and unique root =",(-b/(2*a)))
elif d2>0:
      d=math.sqrt(b**2-(4*a*c))
      print("the roots are real and distinct",(-b+d)/(2*a),"and",(-b-d)/(2*a))
elif d2<0:
      di=math.sqrt((4*a*c)-(b**2))
      print("the roots are imaginary and distinct",-b/(2*a),"-",di/(2*a),"i and",-b/(2*a),"+",di/(2*a),"i")
else:
      print()