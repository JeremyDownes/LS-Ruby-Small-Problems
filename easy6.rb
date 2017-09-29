# Cute Angles               (INCOMPLETE)
def dms(f)
  deg = f.to_i
  deg %= 360
  rem = f % 1
  min = rem  * 60
  rem = min % 1
  sec = rem * 60
  qt = '"'
  if deg < 10; deg = "0"+deg.round.to_s else deg = deg.to_s end
  if min < 10; min = "0"+min.round.to_s else min = min.round.to_s end
  if sec < 10; sec = "0"+sec.round.to_s else sec = sec.round.to_s end
  str = %Q[%(#{deg}°#{min}'#{sec}")]
  p str.gsub(/\\/,"")               # can't strip escape character
end                                 

# Delete Vowels
def remove_vowels(list)
  list.each_index{|i| list[i] = list[i].gsub(/[AEIOUaeiou]/,"")}
  list
end

# Fibonacci Number Location By Length
def find_fibonacci_index_by_length(int)
limit = (10**int)/10
index = 2
x = 1
y = 1
  loop do
    z = x + y
    x = y
    y = z
    index += 1
    break if z > limit  
  end
  index
end

# Reversed Arrays (Part 1)
def reverse!(list)
  bounce = []
  list.length.times {bounce.push(list.pop)}
  bounce.length.times {list.push(bounce.shift)}
  list
end

# Reversed Arrays (Part 2)
def reverse(list)
  output = []
  list.each {|itm| output.unshift(itm)}
  output
end

# Combining Arrays
def merge(list1,list2)
  (list1+list2).uniq!
end

# Halvsies
def halvsies(list)
  mid = (list.length/2)
  if list.length.odd?; mid += 1 end
  list1 = list.slice(0,mid)
  list2 = list.slice(mid,list.length)
  p list1.to_s
  p list2.to_s
  return list1,list2
end

# Find the Duplicate
def find_dup(list)
  list.each_index do |i|
    tst = list.slice!(i)
    if list.include?(tst); return tst end
    list.insert(i,tst)
  end
end

# Does My List Include This?
def include?(list,tst)
  list.each {|itm| return true if itm == tst}
  false
end

# Right Triangles
def triangle(i)
  places = 1
  spaces = i-1
  i.times do
    spaces.times {print " "}
    places.times {print "*"}
    print "\n"
    places += 1
    spaces -= 1
  end
end