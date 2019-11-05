def squareSum(numbers)
  total = 0
  numbers.each do |x|
    total += x**2
  end
  return total
end


p squareSum([1,4,3,2])
