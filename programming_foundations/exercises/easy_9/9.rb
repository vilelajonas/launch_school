# Grade book

# Write a method that determines the mean (average) of the three scores passed
#  to it, and returns the letter value associated with that grade.

# Numerical Score Letter Grade 90 <= score <= 100 'A' 80 <= score < 90 'B' 70
#  <= score < 80 'C' 60 <= score < 70 'D' 0 <= score < 60 'F'

# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.

# Example:

def get_grade(score1, score2, score3)
  average_grade = (score1 + score2 + score3) / 3
  case average_grade
  when (90..100) then 'A'
  when (80..89)  then 'B'
  when (70..79)  then 'C'
  when (60..69)  then 'D'
  else                'F'
  end
end

p get_grade(95, 90, 93) == 'A'
p get_grade(50, 50, 95) == 'D'
