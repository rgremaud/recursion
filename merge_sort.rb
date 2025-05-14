def merge_sort(array)
  n = array.length
  return array if n == 1

  mid = n / 2
  low_array = array[0..mid - 1]
  high_array = array[mid..n - 1]

  merge_sort(low_array)

  # recursive sorts
  # sort a[1..m] - sort the left half
  # sort a[m+1..n] - sort the right half

  # merge sorted sub-arrays using temp array
  # b = copy of a[1..m] Create a temporary array for sorted left half
  # i = 1, j = m+1, k = 1
  # i = index 1 of left half
  # j = index 1 of right half
  # k = index of merged array
  # while i <= m and j <= n, ## runs the recursive function while left array has items and the total
  # a[k++] = (a[j] < b[i]) ? a[j++] : b[i++]
  # → invariant: a[1..k] in final position
  # while i <= m,
  # a[k++] = b[i++]
  # → invariant: a[1..k] in final position
end

# p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
#

def two_var_sort(array)
  if array[0] >= array[1]
    temp = array[0]
    array[0] = array[1]
    array[1] = temp
  end
  array
end

puts two_var_sort([10, 3])

puts two_var_sort([3, 7])
