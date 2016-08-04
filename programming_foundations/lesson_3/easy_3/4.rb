# Question 4

# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make 
# the return value "Few things in life are as important as ". But 
# leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

p advice.gsub("house", "")
p advice.slice!("Few things in life are as important as ")
p advice

# p advice.slice!(0, advice.index('house'))
# p advice=end