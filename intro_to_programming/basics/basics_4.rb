movies = { "The Godfather I" => 1975, 
           "The Godfather II" => 2004,
           "The Godfather III" => 2013,
           "The Pianist" => 2001,
           "Cocoon" => 1981 }

array = movies.to_a

array.each { |movie| puts movie.last }