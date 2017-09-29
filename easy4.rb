# Short Long Short
def short_long_short (str1,str2)
  if str1.length > str2.length; long = str1; short = str2 else
    long = str2; short = str1 end
  return short+long+short
end

# What Century is That?
def century(year)
 cent = (year-1) / 100
 cent += 1
 case cent % 10
   when 1; sufx = "st" unless cent % 100 > 10 && cent % 100 < 14
   when 2; sufx = "nd" unless cent % 100 > 10 && cent % 100 < 14
   when 3; sufx = "rd" unless cent % 100 > 10 && cent % 100 < 14
 end
 if sufx == nil ; sufx = "th" end
 return "#{cent}#{sufx}"
end

# Leap Years (Part 1 + 2)
def leap_year?(year)
  leap = false
  if year % 4 == 0; leap = true end
  if year % 100 == 0; leap = false unless year % 400 == 0 end
  if year < 1752; if year % 4 == 0; leap = true end end #(Part 2)
  return leap
end

# Multiples of 3 and 5
def multisum(num)
  list = []
  x=0; y=0; z = 0
  while x < num
    x += 3 ; y += 5
    list.push(x) unless x > num || list.include?(x)
    list.push(y) unless y > num
  end
  list.each {|i| z += i}
  return z
end

# Running Totals
def running_total(list)
  x=0
  tots = []
  list.each do |y|
    x+=y
    tots.push(x)
  end
  return tots
end

# Convert a String to a Number!
def string_to_integer(str)
  ltrs = ["0","1","2","3","4","5","6","7","8","9"]
  nmbrs = []
  int = 0
  str = str.split("")
  str.each {|x| nmbrs.push(ltrs.index(x))}
  nmbrs.each {|x| int += x; int *=10;}
  return int / 10
end

# Convert a String to a Signed Number!
def string_to_signed_integer(str)
  sign = 1
  ltrs = ["0","1","2","3","4","5","6","7","8","9"]
  nmbrs = []
  int = 0
  str = str.split("")
  if ["-", "+"].include?(str[0]) ; sign = str.shift end
  if sign == "-"; sign = -1 else sign = 1 end  
  str.each {|x| nmbrs.push(ltrs.index(x))}
  nmbrs.each {|x| int += x; int *=10;}
  return (int / 10) * sign 
end

# Convert a Number to a String!
def integer_to_string(num)
  ltrs = ["0","1","2","3","4","5","6","7","8","9"]
  nmbrs = []
  chars = []
  werd = ""
  if num < 0; sign = "-" else sign = "" end
  num = num.abs
  loop do 
      nmbrs.unshift(num%10)
      num /= 10
  break if num == 0
  end
  nmbrs.each {|x| chars.push(ltrs[x])}
  chars.each {|char| werd += char}
  sign + werd
end

# Convert a Signed Number to a String!
"Answered above."