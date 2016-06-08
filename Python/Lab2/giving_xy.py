import math
r,theta=eval(input("enter the radius vector r and theta in degrees \n"))
phi=theta*(math.pi/180)
x=r*math.cos(phi)
y=r*math.sin(phi)
print("x is equal to",x,"\n")
print("y is equal to ",y, "\n")