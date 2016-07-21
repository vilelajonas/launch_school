# Given the following data structures. Write a program that moves the information from the 
# array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
               ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = { email: contact_data.first[0], 
                          address: contact_data.first[1],
                          phone: contact_data.first[2] }

contacts["Sally Johnson"] = { email: contact_data.last[0],
                              address: contact_data.last[1],
                              phone: contact_data.last[2] }

p contacts
