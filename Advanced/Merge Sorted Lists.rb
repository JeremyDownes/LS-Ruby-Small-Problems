# Merge Sorted Lists      # this is kinda clumsy idk it works / Doesn't work breaks w uneven arrays
def merge(list1,list2)
  x1 = list1.length
  x2 = list2.length
  out = []
  if x1 != 0  && x2 != 0      # I skipped comparing empty array and just appended at the end
    x = x1 + x2  # add both lengths for # of steps
    x1 -= 1     # -1 to equal index.last
    x2 -= 1     # ^
    while x > 0                    # this is why empty array doesn't work length of 0 doesnt contribute to iterations               
      if list1[x1] > list2[x2]                    # can't compare empty array "nil" with number
        if x1 > -1; out.unshift(list1[x1])
        else out.unshift(list2[x2]); x2 -= 1 end
        x -= 1
        x1 -= 1                                     # repetitive
      elsif list1[x1] < list2[x2]
        if x2 > -1; out.unshift(list2[x2])
        else out.unshift(list1[x1]); x1 -= 1 end
        x -= 1                                      # repetitive
        x2 -= 1
      else                                    
        out.unshift(list2[x2],list1[x1])
        x1 -= 1
        x2 -= 1
        x -= 2
      end
    end
    out
  else out = list1 + list2        # just add the empty list we dont know which one is empty
  end
end

# Ok so my code sux but I found this on stack overflow per wikipedia

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?     # I added the two lengths together to countdown index
    if left.first <= right.first        # This is not valid per instructions. mutates.
      sorted << left.shift              
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

# fixed mine. I think the flaw may have been in the logic
# determining if either array is empty. works now...
# Merge Sorted Lists    
def merge(list1,list2)
  x1 = list1.length
  x2 = list2.length
  out = []
  if x1 == 0  || x2 == 0 ; return out = list1 + list2 else
    x = x1 + x2  # add both lengths for # of steps
    x1 -= 1     # -1 to equal index.last
    x2 -= 1     # ^
    while x > 0                                 
      if list1[x1] > list2[x2]     
        if x1 > -1; out.unshift(list1[x1])
        else out.unshift(list2[x2]); x2 -= 1 end
        x1 -= 1                                  
      elsif list1[x1] < list2[x2]
        if x2 > -1; out.unshift(list2[x2])
        else out.unshift(list1[x1]); x1 -= 1 end
        x2 -= 1
      else                                    
        out.unshift(list2[x2],list1[x1])
        x1 -= 1
        x2 -= 1
        x -= 1    # extra count down cuz pushing 2 equal elements
      end
        x -= 1
    end
    out
  end
end