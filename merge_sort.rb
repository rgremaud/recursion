# frozen_string_literal: true

def merge_sort(array)
  n = array.length
  return array if n <= 1

  mid = n / 2
  left_array = array[0..mid - 1]
  right_array = array[mid..n - 1]

  sorted_left = merge_sort(left_array)
  sorted_right = merge_sort(right_array)
  merge(array, sorted_left, sorted_right)

  array
end

def merge(array, sorted_left, sorted_right)
  left_length = sorted_left.length
  right_length = sorted_right.length

  array_index = 0
  left_index = 0
  right_index = 0

  while left_index < left_length && right_index < right_length
    if sorted_left[left_index] < sorted_right[right_index]
      array[array_index] = sorted_left[left_index]
      left_index += 1
    else
      array[array_index] = sorted_right[right_index]
      right_index += 1
    end
    array_index += 1
  end

  while left_index < left_length
    array[array_index] = sorted_left[left_index]
    left_index += 1
    array_index += 1
  end

  while right_index < right_length
    array[array_index] = sorted_right[right_index]
    right_index += 1
    array_index += 1
  end

  array
end

array = [105, 79, 100, 110]

p merge_sort(array)
