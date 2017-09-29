# Fix the Bug
def my_method(array)
  if array.empty?
    []
  elsif array#.length > 1					always evaluates true which is incorrect given expected data set
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end