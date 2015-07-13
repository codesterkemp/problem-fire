def sumPrimes(num)
  start = Time.now
  total = (num/2)*2
  # three = ((num+3)/6)*3
  # total = total + three
  # pn = 0
  # fives = (((num+11)*19)/300)
  # total =
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
      # puts "#{k} is prime"
      primearray << k
      total =total + k
    end
    # puts total
    # if ((k+2)%3)==0
    #   k = k + 4
    # else
    k = k + 2
    # end
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

def hardCode(primes)
  File.exist?("openList.rb")
  target = open("theList.rb", 'w')
  target.truncate(0)
  i = 1

  endArray = primes.length
  puts endArray
  target.write("def sumPrimesAlt(num)\n")
  target.write("k = 3\n")
  target.write("total = (num/2)*2\n")
  target.write("while k <= num\n")
  target.write("if num % 3\n")
  target.write("total = total + 3\n")
  while i < endArray
    target.write("elsif num % #{primes[i]}\n")
    target.write("total = total + #{primes[i]}\n")
    i = i+1
  end
  target.write("else\n")
  target.write("total = total + k\n")
  target.write("end\n")
  target.write("end\n")
  target.close
end

big = 10**6
puts "start henry"
henry = sumPrimes(big)
puts "start packing"
hardCode(henry)
# puts sumPrimes(big*7)
# puts sumPrimes(big*8)
# puts sumPrimes(big*9)
# puts sumPrimes(big*10)
