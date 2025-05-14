def merge_sort(array, left_index, right_index)
  # if(left_index >= right_index)
  #  return array
  #  mid = left_index + (right_index - 1)/2
  #  merge_sort(array, left_index, mid)
  #  merge_sort(array, mid, right_index)
  #  merge(array, left_index, mid, right_index)
  #
  #  create two extra arrays, left_array and right_array to merge back into array
  #
end

p merge_sort([3, 2])

def two_var_sort(array)
  if array[0] >= array[1]
    temp = array[0]
    array[0] = array[1]
    array[1] = temp
  end
  array
end
