# Cute angles

# Write a method that takes a floating point number that represents an angle 
# between 0 and 360 degrees and returns a String that represents that angle 
# in degrees, minutes, and seconds. You should use a degree symbol (˚) to 
# represent degrees, a single quote (') to represent minutes, and a double quote
# (") to represent seconds. There are 60 minutes in a degree,
# and 60 seconds in a minute.

# Examples:

def dms(float)
  float < 0 ? float * -1 : float
  degrees = float > 360 ? (float % 360).to_i : (float.to_i)
  minutes = ((float - degrees) * 60).round(2)
  seconds = ((minutes - minutes.to_i) * 60).round(2).to_i.to_s
  minutes = minutes.to_i.to_s

  "#{degrees.to_s}°#{format("%02d", minutes)}'#{format("%02d", seconds)}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
