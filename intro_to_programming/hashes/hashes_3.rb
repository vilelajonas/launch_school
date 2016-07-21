dog = { legs: 4, eyes: 2, tails: 1 }

dog.each_key { |key| p key }

dog.each_value { |value| p value }

dog.each { |k,v| p "The dog has #{v} #{k.to_s}" }