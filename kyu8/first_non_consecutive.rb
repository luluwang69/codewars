def first_non_consecutive(arr)
  count = arr.count - 2
  for i in 0..count
    puts "Current value of i is #{i}"
    puts "Current value of arr[i] is #{arr[i]}"
    puts "Current value of arr[i] is #{arr[i+1]}"
    puts ''
    if arr[i+1] - arr[i] != 1
      return arr[i+1]
    end
  end
  return nil
end

def first_non_consecutive(arr)
  arr.each_cons(2) { |a, b| return b if b - a > 1 }
end

# puts 'hello'

p first_non_consecutive([1,2,3,4,6,7,8])
# p first_non_consecutive([1,2,3,4,5,6,7,8,9,10,13])
# p first_non_consecutive([1,2,3,4,5,6,7,8])

# Test.assert_equals(first_non_consecutive([1,2,3,4,6,7,8]), 6)
# Test.assert_equals(first_non_consecutive([1,2,3,4,5,6,7,8]), nil)
# Test.assert_equals(first_non_consecutive([4,6,7,8,9,11]), 6)
# Test.assert_equals(first_non_consecutive([4,5,6,7,8,9,11]), 11)
# Test.assert_equals(first_non_consecutive([31,32]), nil)
# Test.assert_equals(first_non_consecutive([-3,-2,0,1]), 0)
# Test.assert_equals(first_non_consecutive([-5,-4,-3,-1]), -1)
