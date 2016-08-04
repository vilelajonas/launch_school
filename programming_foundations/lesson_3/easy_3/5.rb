# Question 5

# Write a one-liner to count the number of 
# lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
count = 0
p statement.each_char {|c| count += 1 if (c == 't')  }
p count