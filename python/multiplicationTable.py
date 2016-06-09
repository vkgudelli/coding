#program to create a multiplication table using for loops
import os
print ("         Multiplication Table \n")
print ("  |",end=' ')
for i in range(1,10) :
	print(" ",  i, end=' ')
print()
print("----------------------------------------")
for j in range(1,10):
	print(j,"|",end='')
	for i in range(1,10):
		print(format(i*j,"4d"),end='')
	print()

os.system("pause")