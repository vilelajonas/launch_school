# Fix the following code so that the names are printed as expected.

# def dog
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat}."
# Expected output:

# The dog's name is Spot.
# The cat's name is Ginger.

def dog(name)
  puts "The dog's name is #{name}."
end

def cat(name)
  puts "The cat's name is #{name}."
end

dog("Spot")
cat("Ginger")