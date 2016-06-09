a,b,c=eval(input("enter the 3 sides of a triangle separated by commas \n"))
d=a+b+c
e=2*max(a,b,c)
if a==b& b==c:
      print("this is an equilateral triangle")
elif a==b | a==c | b==c:
      print("this is a isosceles triangle")
elif a!=b&b!=c:
      print("this is a scalene")
elif e<d:
      print("this cannot form a triangle")
else:
      print("this cannot form a triangle")
