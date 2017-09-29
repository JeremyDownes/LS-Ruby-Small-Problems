# Combine Two Lists
def interleave(list1,list2)
  list_out = []
  list1.length.times do
      list_out.push(list1.shift)
      list_out.push(list2.shift)
  end
  list_out
end

# Lettercase Counter
def letter_case_count(str)
  str = str.split("")
  cap = 0; low = 0; other = 0
  str.each do |chr|
    if /[A-Za-z]/.match(chr)
      if chr == chr.upcase; cap += 1 
      elsif chr == chr.downcase; low += 1 end
    else other += 1 end
  end
    { lowercase: low, uppercase: cap, neither: other }
end

# Capitalize Words
def word_cap(str)
  str = str.split(" ")
  str.each {|itm| itm.capitalize!}
  str.join(" ")
end

# Swap Case
def swapcase(str)
  str = str.split("")
  str.each do |chr|
    if chr == chr.upcase; chr.downcase! 
    elsif chr == chr.downcase; chr.upcase! end
  end
  str.join
end

# Staggered Caps (Part 1)
def staggered_case(str)
  flip = 1
  str = str.split("")
  str.each do |chr|  
    if flip == 1
      if /[A-Za-z]/.match(chr); chr.upcase! end
      flip = 2 
    elsif flip == 2
      if /[A-Za-z]/.match(chr); chr.downcase! end
      flip = 1 
      end
  end
  str.join
end

# Staggered Caps (Part 2)
def staggered_case(str)
  flip = 1
  str = str.split("")
  str.each do |chr|  
    if /[A-Za-z]/.match(chr)
      if flip == 1
        chr.upcase!
        flip = 2 
      elsif flip == 2
      chr.downcase!
      flip = 1 
      end
    end
  end
  p str.join
end

# Multiplicative Average
def show_multiplicative_average(list)
  x = 1.0
  list.each {|n| x *= n}
  sprintf( "%0.03f",x / list.length)
end

# Multiply Lists
def multiply_list(list1,list2)
  list1.each_index{|i| list1[i] *= list2[i]}
  list1
end

# Multiply All Pairs
def multiply_all_pairs(list1,list2)
  output = []
  list1.each {|i| list2.each {|x| output.push(x*i) }}
  output.sort
end

# The End is Near But Not Here
def penultimate(str)
  str = str.split(" ")
  str[-2]
end