#python program to find the maximum of n numbers manuaqllywithout using max() and min() funxtions.
n=eval(input("how many numbers you wanto enter (n) \n"))
arry=list(range(n))
i=0
for i in range(0, n):
	arry[i]=eval(input())
	maxx=arry[0]
	minn=maxx
for i in range(0, n-2):
	if arry[i]<arry[i+1]:
		maxx=arry[i+1]
	else:
		minn=arry[i+1]
	if maxx<arry[n-1]:
		maxx=arry[n-1]
	else:
		minn=arry[n-1]
print("the greatest number is",maxx,"and minumum is",minn)
print("checking the result with BIF max() and min()")
a,b=max(arry),min(arry)
print("maximum is ",a,"minimum is",b)
if maxx==a and minn==b :
	print("your result is correct")
else:
	print("sorrry you are wrong")