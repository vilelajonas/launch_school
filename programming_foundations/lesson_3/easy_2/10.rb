# Again, shorten each of these names to just 3 characters -- 
# but this time do it all on one line:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


p flintstones.map! { |flint| flint[0, 3] }