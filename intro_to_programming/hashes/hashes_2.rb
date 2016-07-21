# The difference is that merge method doesn't change the original hashes, 
# and merge! does.

hash1 = { a: 10, b: 20, c: 30 }

hash2 = { d: 55, c: 14, e: 47 }

p "hash 1: #{hash1}" 

p "hash 2: #{hash2}" 

p "Merge WITHOUT exclamation: #{hash1.merge(hash2)}"

p "Merge WITH exclamation: #{hash1.merge!(hash2)}"

p "hash 1 (modified by 'merge!'): #{hash1}" 

p "hash 2 (no change): #{hash2}" 
