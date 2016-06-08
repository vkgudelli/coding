#program to find the distance between two points (x1,y1) and (x2,y2)
import turtle
x1,y1 = eval(input("enter the first point x1 and y1 :"))
x2,y2 = eval(input("enter the first point x2 and y2 :"))
distance = ((x2**2-x1**2)+(y2**2-y1**2))**0.5
print ("distance between (",x1,",",y1,")to (",x2,",",y2,") is",distance)

turtle.penup()
turtle.goto(x1, y1)# Move to (x1, y1)
turtle.pendown()
turtle.write("Point 1")
turtle.goto(x2, y2)# Draw a line to (x2, y2)
turtle.write("Point 2")
# Move to the center point of the line
turtle.penup()
turtle.goto((x1 + x2) / 2, (y1 + y2) / 2) 
turtle.write(distance) 
turtle.done()
input() #to pause the system after running the code.



