# def find_nb(m)
#   i = 1
#   arr = []
#   until !arr.inject(:+).nil? && (arr.inject(:+) >= m) do
#     arr << i**3
#     i = i+1
#   end
#
#   if arr.inject(:+) > m
#     return -1
#   else
#     return arr.count
#   end
# end

# def find_nb(m)
#   i = 0
#   arr = []
#   arr_sum = 0
#   until (arr_sum >= m) do
#     arr << i**3
#     i = i+1
#     arr_sum = arr_sum + i**3
#   end
#
#   if arr_sum > m
#     return -1
#   else
#     return arr.count
#   end
# end

def find_nb(m)
  i = 0
  curr_sum = 0
  while true
    return i if curr_sum == m
    return -1 if curr_sum > m
    i = i + 1
    curr_sum = curr_sum + i**3
  end
end



p find_nb(4183059834009)
# , 2022)
p find_nb(24723578342962)
# , -1)
p find_nb(135440716410000)
# , 4824)
p find_nb(40539911473216)
# , 3568)
