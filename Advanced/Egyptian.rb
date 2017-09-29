# Egyptian Fractions
# this one only works if < 1

$list = []
def egyptian(x)
if x.numerator == 1
  $list.push(x.denominator)
  return $list
end
new_den = x.denominator / x.numerator + 1 
$list.push(new_den)
new_den = 1/new_den.to_r
egyptian(x - new_den)
end

def unegyptian(list)
    x = 0
    list.each {|d|  x +=  1/d.to_r}
    x.to_i
end

# this one works. no recursion just two loops 

def egyptian(x)
  list = []
  count = 0
  while x.numerator > x.denominator || x.denominator / x.numerator + 1 <= count
    count += 1
    list.push count
    d = 1/count.to_r
    x -= d
  end
  loop do
    if x.numerator == 1
      list.push(x.denominator)
      return list
    end
    d = x.denominator / x.numerator + 1 
    list.push(d)
    d = 1/d.to_r
    x -= d
  end
  list
end