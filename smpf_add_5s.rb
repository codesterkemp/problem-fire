def sumPrimesAlt(num)
  k = 3
  total = (num/2)*2
  while k <= num
    # block

    else
      total = total + k




    end
  end
end

def hardCode(primes)
  target = open(theList.rb, 'w')
  target.truncate(0)
  endArray = primes.length
  target.write("def sumPrimesAlt(num)\n")
  target.write("k = 3\n")
  target.write("total = (num/2)*2\n")
  target.write("while k <= num\n")
  target.write("i = 0\n")
  target.write("if num % 3\n")
  target.write("total = total + 3\n")
  target.write("end\n")
  while i < endArray
    target.write("elsif num % #{primes[i]}\n")
    target.write("total = total + #{primes[i]}\n")
    target.write("end\n")
  end
  target.write("total = total + k\n")
  target.write("else\n")
  target.write("end\n")
  target.write("end\n")
  target.close
end


def sumPrimes(num)
  start = Time.now
  total = (num/2)*2
  three = ((num+3)/6)*3
  fives = ((num+10)/15)*5
  total = total + three +fives
  pn = 0
  # fives = (((num+11)*19)/300)
  # total =
  k = 7
  primearray = [7]
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
    # puts "these are k #{k}"
    if prime
      # puts "#{k} is prime"
      primearray << k
      total =total + k
    end
    # puts total
    a=2
    while ((k+a)%3)==0 || ((k+a)%5)==0
      # puts "skip #{k+a}"
      a = a + 2
    end
    k = k + a
    # if (k*100)/num >= pn
    #   puts "#{pn} percent done!"
    #   pn = pn + 1
    # end

  end
  total = total % (10**9)
  finish = Time.now
  diff = finish - start
  str = "#{total} is the total in #{diff}"
  return primearray
end

big = 10**6
puts sumPrimes(big)
# puts sumPrimes(big*7)
# puts sumPrimes(big*8)
# puts sumPrimes(big*9)
# puts sumPrimes(big*10)
