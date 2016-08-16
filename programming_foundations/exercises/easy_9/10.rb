# Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities
#  and converts it into an array of the correct number of each fruit.

# Example:

def buy_fruit(grocery_list)
  result = []
  grocery_list.each do |fruit|
    fruit[1].times do
      result << fruit[0]
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Solution

# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

# fruit * quantity => "applesapplesapples"

# [fruit] * quantity => ["apples", "apples", "apples"]
