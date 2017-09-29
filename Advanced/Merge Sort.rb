def merge_sort(list)     	 # I get the recursive part. my merge method sucks though
  if list.length == 1; return list end
  list2 = list.slice!(0,list.length/2)
  merge(merge_sort(list),merge_sort(list2))
end