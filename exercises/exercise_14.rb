contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

keys = [:email, :address, :phone]

contacts.each do |k,v|
  contact_data.each do |data|
    v.store(keys.first, data) 
    keys.shift
  end
end

p contacts
