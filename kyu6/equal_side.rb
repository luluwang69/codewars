def find_even_index(arr)
  n = arr.length

  for i in 0..n-1
    arr_1 = arr.slice(0...i)
    arr_2 = arr.slice(i+1..-1)
    sum_1 = arr_1.inject(0){|sum, t| sum + t}
    sum_2 = arr_2.inject(0){|sum, t| sum + t}

    if sum_1 == sum_2
      return i
    end
  end
  return -1
end



# shorter version
# def find_even_index(arr)
#   for i in 0...arr.length
#     return i if arr.slice(0...i).sum == arr.slice(i+1..-1).sum
#   end
#   return -1
# end


# puts find_even_index([1,2,3,4,3,2,1])

# ,3
# find_even_index([1,100,50,-51,1,1]),1)
puts find_even_index([1,2,3,4,5,6])
# ,-1)
# find_even_index([20,10,30,10,10,15,35]),3)
# find_even_index([20,10,-80,10,10,15,35]),0)
# find_even_index([10,-80,10,10,15,35,20]),6)
# find_even_index(Array(1..100)),-1)
 # find_even_index([0,0,0,0,0])
 # ,0,"Should pick the first index if more cases are valid")
# find_even_index([-1,-2,-3,-4,-3,-2,-1]),3)
# find_even_index(Array(-100..-1)),-1)
