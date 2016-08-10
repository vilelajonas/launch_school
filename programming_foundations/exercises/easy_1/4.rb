# Write a method that counts the number of occurrences of each element 
# in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 
            'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(vehicles)
  occurences = {}
  uniq_vehicles = Array.new(vehicles.uniq)

  uniq_vehicles.each do |vehicle|
    occurences[vehicle] = vehicles.count(vehicle)
  end
  occurences.each { |k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)
