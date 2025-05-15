def merge(left_array, right_array)
  merge_array = [] # set empty merge array
  # run a comparison of elements until either left or right array is empty
  # if left element > right element merge_array << right
  # if right element > left element merge_array << left
  # if left_array is empty then add remaining right array
  # if right_array is empty then add remaining left array
end

def merge_sort(array)
  n = array.length
  return array if n == 1

  mid = n / 2
  left_array = array[0..mid - 1]
  right_array = array[mid..n - 1]

  merge_sort(left_array) # repeats process on left half
  merge_sort(right_array) # repeats process on right half
  merge(left_array, right_array) # conquer portion
end

array = [3, 2, 1, 13, 8, 5, 0, 1]
p merge_sort(array)
