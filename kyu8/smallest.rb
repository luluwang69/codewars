def find_smallest_int(arr)
  current_minimum = arr[0]
  for i in 0..arr.length-1
    if arr[i] < current_minimum
      current_minimum = arr[i]
    end
  end
  return current_minimum
end






p find_smallest_int([78,56,232,12,8])
# find_smallest_int([78,56,-2,12,8]), -2
# find_smallest_int([-78,56,-2,12,8]), -78
# find_smallest_int([-8]), -8
# find_smallest_int([1,2,3,4,5,6,7,8,9,10]), 1
# find_smallest_int([-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]), -10
# find_smallest_int([-78,56,232,12,8]), -78
# find_smallest_int([78,56,-2,12,-8]), -8
# find_smallest_int([-8,-3]), -8
# find_smallest_int([-3,-8]), -8
