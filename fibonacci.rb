# Assignment
# 1 - Using iteration, write a method #fibs which takes a number and returns an array containing
# that many numbers from the Fibonacci sequence.
# Using an example input of 8, this function should return the array [0, 1, 1, 2, 3, 5, 8, 13].
def fibonacci(n) # rubocop:disable Metrics/MethodLength
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

# puts 'fibonacci(8) is: '
# puts fibonacci(8)

# 2 - Now write another method #fibs_rec which solves the same problem recursively.
# Using an example input of 8, this function should return the array [0, 1, 1, 2, 3, 5, 8, 13]

def fibs_rec(n, array = [])
  return n if n < 2

  fibs_rec(n - 1) + fibs_rec(n - 2)
end

# puts fibs_rec(5)

# 3 - Test both versions of your methods by passing in various lengths as arguments.

def fibs_test(n, fib_rec_array = [])
  if n.zero?
    puts fib_rec_array
  else
    p fib_rec_array << fibs_rec(n - 1)
    # fibs_rec(n - 1)
    fibs_test(n - 1)
  end
end

p fibs_test(8, [])
