# Unlucky Days

# Write a method that returns the number of Friday the 13ths in the year passed
#  in as an argument. You may assume that the year is greater than 1752 (when
#   the modern Gregorian Calendar was adopted by the United Kingdom), and you
#    may assume that the same calendar will remain in use for the
#     foreseeable future.

# Examples:

def friday_13th?(year)
  fridays = 0
  1.upto(12) do |month|
    fridays += 1 if Time.new(year, month, 13).friday?
  end
  fridays
end

p friday_13th?(2015) == 3
p friday_13th?(1986) == 1
