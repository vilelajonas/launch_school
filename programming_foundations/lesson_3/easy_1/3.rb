# Question 3

# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advc = advice.split
advc[advc.index('important')] = 'urgent'
p advc.join(' ')