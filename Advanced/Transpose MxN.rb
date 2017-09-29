# Transpose MxN
def transpose(list)
  x = list.length
  y = 0
  list.each_index {|i| if list[i].length > y; y = list[i].length end}
  trnsp = Array.new(y) {Array.new(x)}
  list.each_index {|r| list[r].each_index{|c| trnsp[c][r] = list[r][c]}}
  trnsp
end