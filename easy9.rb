# Welcome Stranger
def greetings(list,libr)
  name = list.join(" ")
  p "Hello #{libr[:title]} #{name}. I hear you're a #{libr[:occupation]}."
end

# Double Doubles
def twice(i)
  if i.to_s.length.odd?; return i*2 end
  a = i.to_s
  b = a.slice!(a.length/2,a.length)
  if a == b; return i else return i*2 end
end

# Always Return Negative
def negative(i)
  if i > 0; return i * -1 end
  i
 end
 
 # Counting Up
def sequence(i)
  x = 1
  list_out = []
  while x <= i
  list_out.push(x)
  x += 1
  end
  list_out
end

# Uppercase Check
def uppercase?(str)
  if str == str.upcase; return true end
  false
end

# How long are you?
def word_lengths(str)
  list = str.split(" ")
  list.each_index {|i| list[i] += " #{list[i].length}"}
end

# Name Swapping
def swap_name(name)
  name.split(" ").reverse.join(",")
end

# Sequence Count
def sequence(i,val)
  list = []
  x = 1
  i.times { list.push(x * val); x += 1 }
  list
end

# Grade book
def get_grade(x,y,z)
  score = (x+y+z)/3
  case score
    when (90..100); return "A"
    when (80..90); return "B"
    when (70..80); return "C"
    when (60..70); return "D"
   end
  "F"
end
    
# Grocery List
def buy_fruit(list)
  list_out = []
  list.each {|set| set[1].times {list_out.push(set[0])}}
  list_out
end