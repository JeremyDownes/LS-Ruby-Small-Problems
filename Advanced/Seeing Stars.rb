# Seeing Stars				this was just a rewrite of the diamond problem took five minutes
          
def diamond(i)            
  inner_spaces_toggle = -1      
  inner_spaces = i/2 - 1     
  outer_spaces = 0
  outer_spaces_toggle = 1
  bling = 1
  (i-1).times do
    outer_spaces.times {print " "}  
    print "*"
    inner_spaces.times {print " "}  
    print "*"
    inner_spaces.times {print " "}
    print "*"
    outer_spaces.times {print " "}
    print "\n"
    inner_spaces += 1 * inner_spaces_toggle
    outer_spaces += 1 * outer_spaces_toggle
    if outer_spaces == i/2                # Center of function
      i.times {print "*"}
      print "\n"
      inner_spaces += 1
      outer_spaces -= 1
      inner_spaces_toggle = 1
      outer_spaces_toggle = -1
    end
  end
end


























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































