# sum of sums        
def sum_of_sums(list)
i = 0
out = 0
loops = list.length
while loops > 0
  loops.times do
    out += list[i]
    i += 1
  end
  i = 0
  loops -= 1
 end
 out
end

# Mad Libs            exercise deja-vu
print "Please enter a noun for our story :"
n = gets.chomp
print "And a verb :"
v = gets.chomp
print "An adjective :"
aj = gets.chomp
print "And an adverb please :"
av = gets.chomp
print "An optional interjection :"
ij = gets.chomp
puts "You #{v} your #{aj} #{n} so #{av} #{ij}!"

# Leading Substrings
def substrings_at_start(str)
i = 0
out = []
wrd = ""
list = str.split("")
loops = list.length
while loops > 0
  loops.times do
    wrd += list[i]
    i += 1
  end
  out.unshift(wrd)
  wrd = ""
  i = 0
  loops -= 1
 end
 out
end

# All Substrings
def substrings(str)
  out_list = []
  while str != ""
  out_list.push(substrings_at_start(str))
  str[/./m]=""
  end
  out_list
end

# Palindromic Substrings
def palindromes(str)
  out_list = []
  subs = substrings(str).flatten
  subs.each do |wrd|
    if wrd.length > 1
      if wrd == wrd.reverse; out_list.push(wrd) end
    end
  end
  out_list
end

# fizzbuzz              Total Deja-Vu !!!
def fizzbuzz(x,y)
  while x <= y
    if x % 15 == 0; p "fizzbuzz"
    elsif x % 3 == 0; p "fizz" 
    elsif x % 5 == 0; p "buzz"
    else p x end
    x += 1
  end
end

# Double Char (Part 1)
def repeater(str)
  str_out = ""
  str.each_char do |chr|
      str_out += chr
      str_out += chr
  end
  str_out
end

# Double Char (Part 2)
def double_consonants(str)
  str_out = ""
  str.each_char do |chr|
      str_out += chr
       if /[^AEIOUaeiou]/.match(chr); str_out += chr end
  end
  str_out
end

# Convert number to reversed array of digits
def reversed_number(i)
  numbers = []
  while i > 0
    numbers.push(i%10)
    i /= 10
  end
  numbers.each do |x|
    i *= 10
    i += x
  end
  i 
end

# Get The Middle Character
def center_of(str)
  if str.length.odd?; return str[str.length/2]
  else return str[str.length/2] + str[(str.length/2)-1] end
end