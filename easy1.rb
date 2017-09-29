# Repeat yourself
def repeat(msg,num)
  num.times {|num| puts msg}
end

# Odd
def is_odd?(int)
  if int % 2 == 1; return true end
  false 
end
 
# List of Digits
def digit_list(num)
  num.to_s.split("").each {|x| puts x}
end

# How Many?
def count_occurrences(list)
  counted = {}
  list.each { |item| counted.has_key?(item) ? counted[item] += 1 : 
  counted[item] = 1 }
  counted.each {|k,v|puts "#{k} #{v}"}
end

# Reverse It (Part 1)
def reverse_sentence(werds)
  if werds != ''
    werds = werds.split.reverse
    output = werds.shift
    werds.each { |werd| output += " " + werd}
    output
  else return werds end
end

# Reverse It (Part 2)
def reverse_words(werds)
  if werds != ''
    werds = werds.split
    output = werds.shift
    if output.length>4 ; output.reverse! end
    if werds
      werds.each do |werd|
        if werd.length > 4; werd.reverse! end
        output += " "+werd   
      end
    end
    output
  else return werds end
end

# Stringy Strings
def stringy(x)
  count = 1
  str = ""
  x.times {  str += (count % 2).to_s ; count += 1}
  str
end

# Array Average
def average(list)
  tot = 0
  list.each {|x| tot += x}
  tot / list.length
end

# Sum of Digits
def sum(num)
  x = 0
  num.to_s.length.times do
    x += num%10
    num /= 10
  end
  x
end                 # I can't figure it out with no loop

# What's my Bonus?
def calculate_bonus(num,pay)
  if pay; return num /2 else return 0 end
end