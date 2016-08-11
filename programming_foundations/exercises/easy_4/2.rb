# What Century is That?

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
#   comprise the 20th century.

def century(year)
  year = year.to_s.length == 1 ? year.to_s.prepend('0') : year.to_s
  decade = year.to_s[-2..-1].to_i
  century = year.to_s.chop.chop.to_i
  century += 1 if (1..99).include?(decade)
  century = century.to_s

  if ('4'..'19').include?(century[-2..-1])
    century + 'th'
  elsif century.end_with?('1')
    century + 'st'
  elsif century.end_with?('2')
    century + 'nd'
  elsif century.end_with?('3')
    century + 'rd'
  else
    century + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# Solution

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include? century % 100
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
