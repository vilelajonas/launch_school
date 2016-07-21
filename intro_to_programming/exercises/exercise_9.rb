h = { a:1, b:2, c:3, d:4 }

# 1.
h[:b]

# 2.
h[:e] = 5

# 3.

h.each do |k,v|
	h.delete(k) if v < 3.5
end
p h