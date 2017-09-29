def gci
    gets.chomp.to_i
end

# Searching 101
numers = []
until numers.length == 5 do
  print "Number #{numers.length+1}?"
  numers.push(gci)
end
print "Number to test"
if numers.include?(x=gci); puts "#{x} is contianed within #{numers}" end
    
# Arithmetic Integer
print "A number?"
x = gci
y = gci
puts "#{x} + #{y} = #{x + y}"
puts "#{x} - #{y} = #{x - y}"
puts "#{x} * #{y} = #{x * y}"
puts "#{x} / #{y} = #{x / y}"
puts "#{x} % #{y} = #{x % y}"
puts "#{x} ** #{y} = #{x ** y}"

# Counting the Number of Characters
print "Type some stuff"
puts "You entered #{gets.chomp.delete(" ").length} characters"

# Multiplying Two Numbers
def multiply(x,y)
  x*y
end
   
# Squaring an Argument
def square(x)
  multiply(x,x)
end

# Exclusive Or
def xor?(arg1,arg2)
  if arg1 && arg2; return false end
  if !arg1 && !arg2; return false end
  true
end

# Odd Lists
def oddities(list)
  x=0
  odds=[]
  until x >= list.length do 
    odds.push(list[x])
    x+=2
  end
  odds
end

# Palindromic Strings (Part 1)
def palindrome?(werd)
  werd == werd.reverse
end

# Palindromic Strings (Part 2)
def real_palindrome?(werd)
  werd.delete(" ").gsub(/[^A-Za-z0-9 ]/, '').downcase == werd.delete(" ").gsub(/[^A-Za-z0-9 ]/, '').reverse.downcase
end

# Palindromic Numbers
def palindromic_number?(int)
  x = int
  list = []
  while x != 0 do 
    list << x % 10
    x /= 10
  end
  list. each do |num|
      x+=num
      x*=10
  end
  x /= 10
  x == int
end