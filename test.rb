def fatorial(num)
  result = 1
  while num > 1
    result = result * num
    num -= 1
  end
  puts result
end

fatorial(5)
fatorial(6)
fatorial(7)
fatorial(8)