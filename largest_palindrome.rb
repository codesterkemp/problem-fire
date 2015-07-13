def largest_palindrome(digit)
  starting_point = ((10 ** digit)-1) ** 2
  i = starting_point
  while i > 1

    if palindrome?(i)
      if divByNDigitNum?(i,digit)
        return i
      end
    end
    i = i-1
  end
  return false
end

def palindrome?(var)
  temp = var.to_s
  temp.reverse == temp
end

def divByNDigitNum?(num,digit)
  top = (10**digit)-1
  bot = 10**(digit-1)
  i = top;
  while i > bot
    puts "#{num%i} should be zero #{num} "
    otherHalf = num/i
    if num%i==0 && otherHalf > bot && otherHalf < top
      puts "should have ended..................."
      print "#{i} x #{otherHalf} = "
      return true
    end
    i = i.- 1
  end
  return false
end
pal = largest_palindrome(3)
puts (pal)
