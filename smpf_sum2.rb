def sumPrimes(num)
  start = Time.now
  total = (num/2)*2
  # three = ((num+3)/6)*3
  # total = total + three
  # fives = (((num+11)*19)/300)
  k = 3
  primearray = [3,5,7]
  while k <= num
    i = 0
    prime = true
    kend = k**(1.0/2.0)
    while primearray[i] <= kend
      if k % primearray[i] == 0
        total = total + primearray[i]
        prime =false
        break()
      else
        i = i + 1
      end
    end
    if prime
      primearray << k
      total =total + k
    end
    k = k + 2
  end
  finish = Time.now
  diff = finish - start
  str = "#{total} is the total in #{diff}"
  return str
end

big = 10**6
puts sumPrimes(big)
# 3203714961609
# 3203699961613
# puts sumPrimes(big*7)
# puts sumPrimes(big*8)
# puts sumPrimes(big*9)
# puts sumPrimes(big*10)
