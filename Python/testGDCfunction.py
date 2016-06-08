#program to test the GDCfunction module
from os import system
from GDCfunction import gcd
num1,num2 = eval(input("enter the numbers you wanto find the gcd for \n"))
print("the gcd of the number is", gcd(num1,num2))
system("pause")