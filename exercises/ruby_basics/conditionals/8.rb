# In the code below, status is randomly assigned as 'awake' or 'tired'.

status = ['awake', 'tired'].sample

# Write an if statement that returns "Be productive!" if status equals 'awake'
# and returns "Go to sleep!" otherwise. Then, assign the return value of the 
# if statement to a variable and print that variable.

if status == 'awake'
  action = "Be productive!"
else
  action = "Go to sleep!"
end

p action