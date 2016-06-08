# program to find the sum of the digits inside a  4 digit number.
num=eval(input("enter the number"))
num1=num%10
num=num//10
num2=num%10
num=num//10
num3=num%10
num=num//10
sum=num+num1+num2+num3
print("sum is =",sum)
