# ASCII String Value
def ascii_value(str)
  str = str.split("")
  sum = 0
  x = str.each
   str.each_index {|i| str[i] = str[i].ord}
   str.each {|x| sum += x}
   sum
end

# After Midnight (Part 1)
def time_of_day(min)
  while min < -1440; min += 1440 end
  while min > 1440; min -= 1440 end
  if min >= 0; h = min / 60 end
  if min < 0;  h = 24 + (min / 60) end
  m = min % 60
  if h < 10; h = "0" + h.to_s else h = h.to_s end
  if m < 10; m = "0" + m.to_s else m = m.to_s end
  return h+":"+m
end

# After Midnight (Part 2)
def after_midnight(str)
  str = str.split(":")
  h = str[0].to_i % 24
  m = str[1].to_i
  minutes = (h * 60) + m 
end

def before_midnight(str)
  str = str.split(':')
  h = str[0].to_i % 24
  m = str[1].to_i
  return minutes = 1440 - ((h * 60) + m) unless  h && m == 0  
  minutes = 0
end

# Letter Swap
def swap(str)
  str_out = ""
  str = str.split(" ")
  str.each_index do |i|
    first = str[i].slice!(0)
    last = str[i].slice!(str[i].length-1)
    str[i] = "#{last}#{str[i]}#{first}"  
  end
  str.join(" ")
end

# Clean up the words
def cleanup(str)
  output = []  
  no_go = false
  str = str.gsub(/[^A-Za-z0-9 ]/, ' ').split("")
  str.each_index do |i|
    if str[i]==" "
      output.push(str[i]) unless no_go == true
      no_go = true
    else
      output.push(str[i]) 
      no_go = false
    end
  end
  output.join
end

# Letter Counter (Part 1)
def word_sizes(str)
  hash = {}
  str = str.split(" ")
  str.each_index {|i| str[i] = str[i].length}
  str.each {|v| hash[v] = str.count(v)}
  hash
end
  
# Letter Counter (Part 2)
def word_sizes(str)
  str.gsub!(/[^A-Za-z0-9 ]/, '')
  hash = {}
  str = str.split(" ")
  str.each_index {|i| str[i] = str[i].length}
  str.each {|v| hash[v] = str.count(v)}
  hash
end
  
# Alphabetic Numbers
def alphabetic_number_sort (list)
  hash = {}
  wrds = ["zero", "one", "two", "three", "four", "five", "six", "seven",    "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",       "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  list.each {|nmbr| hash[wrds[nmbr]] = nmbr}
  list.clear
  hash = hash.sort
  hash.each {|k,v| list.push(v)}
  list
end

# ddaaiillyy ddoouubbllee
def crunch(str)
  list = []
  str = str.split("")
  str.each_index {|i| if str[i] != str[i+1]; list.push(str[i]) end }
  list.join
end

# Bannerizer
def print_in_box(str)
  x = str.length
  print "+-"
  x.times { print "-" }
  print "-+\n| "
  x.times { print " " }
  print " |\n| "+str+" |\n| "
  x.times { print " " }
  print " |\n+-"
  x.times { print "-" }
  print "-+"
end