# def factorize(num)
#   puts "Start factorizing #{num} "
#   numlist = []
#   if num < 4
#     return numlist.push(num)
#   end
#   top = num**(1.0/2.0)+1
#   bot = 2
#   i = bot;
#   prime = true

#   while i < top
#     otherHalf = num/i
#     if num%i==0
#       num = num/i
#       numlist.push(factorize(i).push(factorize(otherHalf)))
#       prime = false
#     end
#     i = i.+ 1
#   end
#   if prime
#     numlist.push(num)
#   end
#   puts "End factorizing #{num} #{numlist} "
#   return numlist
# end

def factor(num)
  i = 2
  hsh = {}
  while num >= i
    if num%i == 0
      num = num/i
      elem =i.to_s
      if hsh.fetch(elem,false)
        hsh[elem] = hsh[elem] + 1
      else
        hsh[elem] = 1
      end
    else
      i = i + 1
    end
  end
  return hsh
end

def lcm(num)
  thelcm = 232792560
  while true
    puts thelcm
    total = 0
    i = 2
    while i <= num
      total = total + thelcm%i
      i = i + 1
    end
    if total == 0
      return thelcm
    else
      thelcm = thelcm + 1
    end
  end
end



# def arrayToHash(arr)
#   hsh = {}
#   arr.each do |elem|


#   end
#   return hsh
# end

def hashMerge(hsh1,hsh2)
  hsh1.each_pair do |k1,v1|
    if hsh2.fetch(k1,false)
      if hsh2[k1] < v1
        puts "bulid it #{k1} #{hsh2[k1]} vs #{v1}  "
        hsh2[k1] = v1
      else
        puts "kapow #{k1} #{hsh2[k1]} vs #{v1}  "
      end
    else
      hsh2[k1] = v1
    end
  end
  puts hsh2
  return hsh2
end

def hashMultiply(hsh)
  multiple = 1
  hsh.each_pair do |k,v|
    multiple = multiple*(k.to_i)**v
  end
  puts multiple
end

def leastCommonMultiple(num)
  hsh = {}
  for i in 2...num
    hsh2 = factor(i)
    hsh = hashMerge(hsh,hsh2)
  end
  return hashMultiply hsh
end

jack = leastCommonMultiple(20)
puts jack
# john = factorize(20)
# bob = john.flatten!
# puts "#{bob}"
# jim = hashMultiply arrayToHash(bob)
# puts jim


# 20 5
# 19 19
# 18 3 3
# 17 17
# 16 2 2 2 2
# 15
# 14 7
# 13 13
# 12
# 11 11
# 232792560
