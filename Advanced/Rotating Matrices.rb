# Rotating Matrices
def rotate90(list)
  x = list.length
  y = 0
  list.each_index {|i| if list[i].length > y; y = list[i].length end}
  rot = Array.new(y) {Array.new(x)}
  list.length.times{|r| x = list.pop ; x.each_index{|c| rot[c][r] = x[c]}}
  rot
end