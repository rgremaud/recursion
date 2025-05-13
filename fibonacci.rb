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

puts fibonacci(8)

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  fibs_array = fibs_rec(n - 1)
  fibs_array << fibs_array[-1] + fibs_array[-2]
  fibs_array
end

puts fibs_rec(8)
