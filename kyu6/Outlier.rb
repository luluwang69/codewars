def find_outlier(integers)
  arr = integers.select{|x|x.even?}
  if arr.count == 1
    return arr[0]
  else
    return (integers - arr)[0]
  end
end





p find_outlier([0, 1, 2])
# , 1
p find_outlier([1, 2, 3])
# , 2
p find_outlier([2,6,8,10,3])
# , 3
