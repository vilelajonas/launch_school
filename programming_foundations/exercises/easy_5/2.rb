# After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and 
# returns the time of day in 24 hour format (hh:mm). Your method 
# should work with any integer input.

# You may not use ruby's Date and Time classes.

# Disregard Daylight Savings and Standard Time and other complications.

def time_of_day(minutes)
  time = minutes > 0 ? minutes.divmod(60) : (minutes * -1).divmod(60)
  if time[0] >= 24
    time[0] = time[0] % 24
  end
  if minutes < 0
    time = [23 - time[0], 60 - time[1]]
  end
  hour = time[0] > 9 ? time[0].to_s : time[0].to_s.prepend('0')
  minute = time[1] > 9 ? time[1].to_s : time[1].to_s.prepend('0')
  "#{hour}:#{minute}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# Solution

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

