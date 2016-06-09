import os																		#the scissor,rock,paper game
import random
contin='y'
while contin =='y' :															#user controlled while loop
	num=eval(input("enter 1 for scissor, 2 for rock and 3 for paper \n"))
	if num==1 or num==2 or num==3 :                                      		#checking for wrong inputs
		x=random.randint(1,3)
		print("computers guess = ",x)
		if num==3 :
			if x==num :
				print("draw paper-paper")
			elif x==2 :
				print("you wins .paper beats rock")
			else:
				print("computer wins. scissor beats paper")
		elif num==2 :
			if x==num :
				print("draw rock-rock")
			elif x<num :
				print("you wins.rock beats scissor")
			else:
				print("computer wins.paper beats rock")
		elif num==1 :
			if x==num :
				print("draw scissor-scissor")
			elif x==3 :
				print("you wins.scissor beats paper")
			else:
				print("computer wins.rock beats scissor")
	else :
		print("The number you have entered is not valid.Try again.")
	contin=input("enter y to continue or n to quit \n")
			
os.system("pause")																#system pause