contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
               ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = { email: contact_data.first[0], 
                          address: contact_data.first[1],
                          phone: contact_data.first[2] }

contacts["Sally Johnson"] = { email: contact_data.last[0],
                              address: contact_data.last[1],
                              phone: contact_data.last[2] }

# Using the hash you created from the previous exercise, demonstrate how you would 
# access Joe's email and Sally's phone number?

p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]