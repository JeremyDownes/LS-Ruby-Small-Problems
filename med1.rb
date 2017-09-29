# Rotation (Part 1)
def rotate_array(list)
  out_list = []
  out_list += list
  x = out_list.shift
  out_list.push(x)
end

# Rotation (Part 2)
def rotate_rightmost_digits(i,it)
  list = []
  x = []
  i_out = 0
  while i > 0 
    list.push(i%10)
    i /= 10
  end
  x = list.slice!(0,it)
  x.reverse!
  x = rotate_array(x)
  list = list.reverse + x
  list.each{|n| i_out += n ; i_out *= 10}
  i_out /= 10
end

# Rotation (Part 3)                 # 0's tough to handle
def max_rotation(i)
  i_out = 0
  list = []
  while i > 0 
    list.unshift(i%10)
    i /= 10
  end
  it = list.length 
  list.each{|n| i += n ; i *= 10}
  i /= 10
 while it > 0
   i_out *= 10                          # add decimal place to output
    if i / (10 ** (it-1)) == 0          # determines leading zero
        i *= 10                                             
        it-=1                           # leading zero handling
        next 
    end
    i = rotate_rightmost_digits(i,it)                       
    i_out += i / (10 ** (it-1))         # add first digit of i to output
    i %= 10 ** (it-1)
    it -= 1  
  end
  i_out
end

# 1000 Lights

def lights(i)           # I'm kind of proud of this one alg was tough
  list = []
  mid_list = []
  master_list = []
  y = 1
  x = 1
  step = 1
  while step <= i
    while x <= i
      if x % step == 0; y = -1 end
      list.push(x * y)
      x += step
      y = 1
    end
    mid_list.push(list)
    list = []
    step +=1
    x = step
  end
    mid_list.flatten!.sort!
    hsh = mid_list.group_by{|x| x}
    hsh.each {|k,v| master_list.push(v)}
    master_list.each {|x| if x.length.odd?; puts "#{x[0].abs} is on" end}
end

# Diamonds!             # I actually found this one easy 15 min distracted

def diamond(i)              # I hope I didn't name my variables
  spaces_toggle = -1        # the same as the instruction
  spaces = i/2              # This is MY algorithm !
  bling_toggle = 1
  bling = 1
  (i).times do
    spaces.times {print " "}  
    bling.times {print "*"}
    spaces.times {print " "}  
    print "\n"
    spaces += 1 * spaces_toggle
    bling += 2 * bling_toggle
    if bling == i               # Center of function
      bling.times {print "*"}
      print "\n"
      spaces += 1
      bling  -= 2
      spaces_toggle = 1
      bling_toggle = -1
    end
  end
end

# Stack Machine Interpretation

$register = 0              
$stack = []             
def reset                  
  $register = 0           
  $stack = []              
end                         
                           
def n(val)                  
  $register = val           
end                         
                           
def push
  $stack.push($register)
end
  
def add
  $register = $register + $stack.pop
end
  
def suB
  $register = $register - $stack.pop
end
  
def mult
  $register = $stack.pop * $register
end
  
def div
  $register = $register / $stack.pop
end
  
def mod
  $register = $register % $stack.pop
end
  
def pop
  $register = $stack.pop
end
  
def print2
  puts $register
end
  
def minilang(msg)
  list = msg.split(" ")
  list.each do |q|
    if /[0-9]/.match(q); n(q.to_i); next end
    case q
      when "PUSH"; push
      when "ADD"; add
      when "SUB"; suB
      when "MULT"; mult
      when "DIV"; div
      when "MOD"; mod
      when "POP"; pop
      when "PRINT"; print2
    end
  end
end

# Word to Digit               # This is simple with regex
def word_to_digit(str)        # I'm hoping thats not the point
  list = str.split(" ")       # cuz I'm doing it the hard way
  insertions = []
  list.each_index do |i| 
    if list[i].include?(".")        # could also be /[!?.@,]/ etc.
      list[i] = list[i].split(".").slice(0,list[i].length-1).join
      insertions.push(i)                # collecter
    end
  end
  list.each_index do |i|
    case list[i].downcase
      when "zero"; list[i] = "0"
      when "one"; list[i] = "1"
      when "two"; list[i] = "2"
      when "three"; list[i] = "3"
      when "four"; list[i] = "4"
      when "five"; list[i] = "5"
      when "six"; list[i] = "6"
      when "seven"; list[i] = "7"
      when "eight"; list[i] = "8"
      when "nine"; list[i] = "9"
    end
  end
  insertions.each{|i| list[i] = list[i]+"."}
  list.join(" ")
end

# Fibonacci Recursive    
def fibonacci(n)       
  return n.abs if n <= 0   
  n = fibonacci(n - 1) + fibonacci(n - 2) 
end     
# the above calls until it gets a return value
# recursively satisfying conditions up the call chain
# calls itself twice each iteration and 1+1 is evaluated like 1000 times

# Fibonacci Numbers (Proceedural) # Simple
def fibonacci_last(n)
    x = 1
    y = 1
    z = 0
    (n-2).times do
        z = x+ y
        x = y
        y = z
    end
    z
end
 
# Fibonacci Numbers (Last Digit)  takes a little while but it processes
def fibonacci_last(n)
    x = 1
    y = 1
    z = 0
    (n-2).times do
        z = x + y
        x = y%10
        y = z%10
    end
    z % 10
end