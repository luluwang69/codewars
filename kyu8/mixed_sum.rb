def sum_mix(x)
  sum = 0
  x.each do |a|
    sum = sum + a.to_i
  end
  return sum
end





p sum_mix([9, 3, '7', '3'])
p sum_mix([9, 3, '7', '3']) == 22
# sum_mix(['5', '0', 9, 3, 2, 1, '9', 6, 7]), 42
# sum_mix(['3', 6, 6, 0, '5', 8, 5, '6', 2,'0']), 41
# sum_mix(['1', '5', '8', 8, 9, 9, 2, '3']), 45
# sum_mix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]), 61
