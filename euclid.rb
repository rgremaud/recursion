def euclid(num1, num2)
  return num2 if num1.zero?
  return num1 if num2.zero?

  if num1 >= num2
    remainder = num1 % num2
    num1 = num2
  else
    remainder = num2 % num1
    num1 = num2
  end

  num2 = remainder
  euclid(num1, num2)
end

p euclid(1071, 462)
