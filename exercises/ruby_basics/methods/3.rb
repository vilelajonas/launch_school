# Using the following code, write a method called car that takes two arguments 
# and prints a string containing the values of both arguments.

# car('Toyota', 'Corolla')
# Expected output:

# Toyota Corolla

def car(brand, model)
  brand + ' ' + model
end

puts car('Toyota', 'Corolla')