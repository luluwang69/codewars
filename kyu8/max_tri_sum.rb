def max_tri_sum(numbers)
sum = 0
  b = numbers.uniq.sort.slice(-3..-1)
  b.each do |x|
     sum = sum + x
  end
  return sum
end




p max_tri_sum([3,2,6,8,2,3])
# max_tri_sum([2,9,13,10,5,2,9,5]),32
# max_tri_sum([2,1,8,0,6,4,8,6,2,4]),18
# max_tri_sum([-3,-27,-4,-2,-27,-2]),-9
# max_tri_sum([-14,-12,-7,-42,-809,-14,-12]),-33
# max_tri_sum([-13,-50,57,13,67,-13,57,108,67]),232
# max_tri_sum([-7,12,-7,29,-5,0,-7,0,0,29]),41
# max_tri_sum([-2,0,2]),0
# max_tri_sum([-2,-4,0,-9,2]),0
# max_tri_sum([-5,-1,-9,0,2]),1
