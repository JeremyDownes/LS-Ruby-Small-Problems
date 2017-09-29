# Transpose 3x3
def transpose(matrix)
  x=[[],[],[]]
  x=matrix.each_index {|r| matrix[r].each_index{|c| x[c][r] = matrix[r][c]}}
  x
end