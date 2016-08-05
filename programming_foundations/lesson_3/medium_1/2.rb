# Question 2

# Create a hash that expresses the frequency with which each 
# letter occurs in this string:

statement = "The Flintstones Rock"

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

hash = {}

statement.gsub(' ', '').each_char do |char|
  hash[char] = statement.scan(char).count
end

p hash
