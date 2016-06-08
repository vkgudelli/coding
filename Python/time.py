import time
currentTime=time.time()
print(currentTime) #display the time in seconds and in milliseconds

#following code set converts the  above time into real time format.
#Obtain the total seconds since midnight, Jan 1, 1970
totalSeconds = int(currentTime) 
 
# Get the current second
currentSecond = totalSeconds % 60
 
# Obtain the total minutes
totalMinutes = totalSeconds // 60

# Compute the current minute in the hour
currentMinute = totalMinutes % 60
 
# Obtain the total hours
totalHours = totalMinutes // 60
 
# Compute the current hour
currentHour = totalHours % 24
# Display results
print("Current time is", currentHour, ":",
currentMinute, ":", currentSecond, "GMT")
#will come back to convert GMT to local time after learning if statement
input()
