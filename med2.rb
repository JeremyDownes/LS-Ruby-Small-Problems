# Longest Sentence
def longest_sentence(str)
  list = str.split(/[.?!]/)
  list = list.each_index {|i| list[i] = list[i].split(" ")}
  x = 0
  list.each {|sntlst| if sntlst.length > x; x = sntlst.length; p sntlst.to_s end}
  x
end

# Now I Know My ABCs            # actually kinda easy
def block_word?(str)
  ltrs = {"B"=>"O", "X"=>"K", "D"=>"Q", "C"=>"P", "N"=>"A", "G"=>"T", "R"=>"E", "F"=>"S", "J"=>"W", "H"=>"U", "V"=>"I", "L"=>"Y", "Z"=>"M" }
  list = str.upcase.split("")
  list.each do |ltr|
      if ltrs.value?(ltr) || ltrs.key?(ltr)
        ltrs.delete_if{|k,v| k == ltr || v == ltr}
      else return false end
  end
  true
end

# Lettercase Percentage Ratio
def letter_percentages(str)         # y so ez ?
  str = str.split("")
  cap = 0; low = 0; other = 0
  f = 100.0 / str.length
  str.each do |chr|
    if /[A-Za-z]/.match(chr)
      if chr == chr.upcase; cap += 1 
      elsif chr == chr.downcase; low += 1 end
    else other += 1 end
  end
    { lowercase: f* low, uppercase: f* cap, neither: f* other }
end

# Matching Parentheses?             ez
def balanced?(str)
  x = 0
  str.each_char do |chr|
    if chr == "("; x += 1 end
    if chr == ")"
      if x == 0; return false else x -= 1 end
    end
  end
  if x == 0; return true end
  false
end

# Triangle Sides                    ez
def triangle(x,y,z)
 list = [x,y,z]
 list.sort!
 p list
 if list[0]+list[1] <= list[2]; return :invalid end
 if list[0] == list[2]; return :equilateral
 elsif list[0] == list[1] || list[1] == list[2]; return :isosceles
 else return :scalene end
end

# Tri-Angles                        ez
def triangle(x,y,z)
  if x + y + z != 180; return :invalid end
  if x==0 || y==0 || z==0; return :invalid end
  if x==90 || y==90 || z==90; return :right end
  if x>90 || y>90 || z>90; return :obtuse end
  if x<60 || y<60 || z<60; return :acute end
end

# Unluck Days               complete in less than five minues
def friday_13th(year)
  month = 1
  f13 = 0
  while month < 13
    x = Time.new(year,month,13)
    if x.friday?; f13 += 1 end
    month += 1
  end
  f13
end

# Next Featured Number Higher than a Given Value
def featured(i)         # found digits method but only works > v2.4 so...
  i = i - i % 7
  loop do
    i += 7
    list = []
    x = i
    while x > 0 do
      list.unshift(x % 10)
      x /= 10
    end
    if list.length > 9; return "There is no possible number that fulfills those requirements" end
    if list == list.uniq; break end
  end  
  i
end

# Bubble Sort
def bubble_sort!(list)
  ordered = false
  while !ordered
    ordered = true
    list.each_index do |i|
      x = list[i]
      y = list[i+1]
      if y
        if x > y
          ordered = false
          list[i] = y
          list[i+1] = x
        end
      end
    end
  end
  list
end

# Sum Square - Square Sum        i dont get it... too easy
def sum_square_difference(i)
  x = 0 
  sum = 0
  square_sum = 0
  loop do
    x += 1
    sum += x
    square_sum += x**2
    break if x == i 
  end
  sum**2-square_sum
end