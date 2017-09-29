def prompt
  gets.chomp
end

# How old is Teddy
puts "Teddy is #{rand(180)+20} years old!"

# How big is the room?
print "Length (m)?"
x= prompt.to_f
print "Width? (m)"
y= prompt.to_f
puts "Area = #{x*y} square meters or #{((x*y)*10.7639).round(1)} square feet"

# Tip calculator
print "Bill amount?"
x= prompt.to_f
print "Tip percentage?"
y= prompt.to_f
puts "The tip is #{y=x*(y/100)}"
puts "The total is #{x+y}"

# When will I Retire?
print "Age?"
x= prompt.to_i
print "Desired age of retirement?"
y= prompt.to_i
y= (y-x).abs
puts "It is #{x=Time.now.year}"
puts "You can retire in #{x+y} in another #{y} years"

# Greeting a user
print "Name?"
name = prompt
if name.include?("!")  
  puts "HI, #{name.upcase} WHY ARE WE YELLING?"
  else puts "Hi, "+name+"." end

# Odd
(1..99).each {|x| if x.odd?; puts x end} 

# Even
(1..99).each {|x| if !x.odd?; puts x end}

# Sum or Product of Consecutive Integers
print "Whole number > 0?"
x= prompt.to_i
print "Sum or Product?"
sum_prod = prompt.downcase[0]
total = x
if sum_prod == "s" x.times do |x| 
    total += x
    x -= 1
  end
elsif sum_prod == "p"
  x.times do |x|
    if x == 0; next end
    total *= x
    x -= 1
  end
end
puts total

# String Assignment
"bang mutates caller value was changed in memory not alias reassigned"

# "Mutation"
"Values are mutates and the alias reflected the change"
