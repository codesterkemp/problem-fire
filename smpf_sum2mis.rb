def sumPrimes(num)
  start = Time.now
  total = (num/2)*2
  three = ((num+3)/6)*3
  total = total + three
  pn = 0
  # fives = (((num+11)*19)/300)
  # total =
  k = 5
  primearray = [5,7]
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
    if ((k+2)%3)==0
      k = k + 4
    else
      k = k + 2
    end
    if (k*100)/num >= pn
      puts "#{pn} percent done!"
      pn = pn + 1
    end

  end
  total = total % (10**9)
  finish = Time.now
  diff = finish - start
  str = "#{total} is the total in #{diff}"
  return str
end

big = 10**12
puts sumPrimes(big)
# puts sumPrimes(big*7)
# puts sumPrimes(big*8)
# puts sumPrimes(big*9)
# puts sumPrimes(big*10)
