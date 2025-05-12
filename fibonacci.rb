# Assignment
# 1 - Using iteration, write a method #fibs which takes a number and returns an array containing
# that many numbers from the Fibonacci sequence.
# Using an example input of 8, this function should return the array [0, 1, 1, 2, 3, 5, 8, 13].
def fibonacci(n)
  fibs_array = [0, 1]
  if n == 1
    fibs_array = [0]
  elsif n == 2
    fibs_array
  else
    i = 2
    loop do
      fibs_value = fibs_array[i - 1] + fibs_array[i - 2]
      fibs_array << fibs_value
      i += 1
      break if i == n
    end
  end
  puts fibs_array
end

# 2 - Now write another method #fibs_rec which solves the same problem recursively.
# Using an example input of 8, this function should return the array [0, 1, 1, 2, 3, 5, 8, 13]

def fibs_value(n, fibs_rec_array = [])
  if n == 1
    0
  elsif n == 2
    1
  else
    fibs_value(n - 1) + fibs_value(n - 2)
  end
end

p fibs_value(8)

def fibs_rec(n)
  fibs_array = []
  return unless n >= 1

  fibs_array << fibs_value(n - 1)
  puts fibs_array
end

p fibs_rec(8)

# 3 - Test both versions of your methods by passing in various lengths as arguments.
