def smp_factor(num)
  i = 3
  while num >= i
    if num%i == 0
      return i
    else
      i = i + 2
    end
  end
  return num
end

def sumPrimes(num)
  start = Time.now
  total = num
  for k in (3..num).step(2)
    i = 3
    while k >= i
      if k % i == 0
        total = total + i
        i = k+1
      else
        i = i + 2
      end
    end
  end
  finish = Time.now
  diff = finish - start
  str = "#{total} is the total in #{diff}"
  return str
end

big = 10**6
puts sumPrimes(big)
