#program to fingd the area of a triangle
import math
def tri_area(x,y,z):
      s=(x+y+z)/2
      p=s*(s-x)*(s-y)*(s-z)
      area=math.sqrt(abs(p))
      return area
a,b,c=eval(input("enter the 3 sides of a triangle \n"))
print("area of the triangle is =",tri_area(a,b,c))