#program to convert the seconds into time in minute and seconds using // integer division and % modulus operator.
seconds=eval(input("enter the seconds you want to convert \n"))
minute=seconds//60  # // will not give the fractional part of the division.
remainingsec=seconds%60 # % will give the reminder of the division.
print(seconds,"seconds is ",minute,"minutes and ",remainingsec,"seconds")
