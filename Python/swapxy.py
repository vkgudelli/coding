#program to swap values in x and y using different methods
#hard way
print("by the hard way")
print("----------------")
x=1
y=2
print("before swapping",x,y)
tmp=x
x=y
y=tmp
print("after swapping",x,y)

#easy way
print("by the easy way")
print("----------------")

x,y=1,2
print("before swapping",x,y)
x,y=y,x
print("after swapping",x,y)
