def count_down(num)
  if num >= 0
    p num
    count_down(num - 1)
  end
end

count_down(7)
