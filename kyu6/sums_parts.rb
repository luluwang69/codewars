# def parts_sums(ls)
# a =[]
# sum = 0
#
#   return [0] if ls.count == 0
#
#   until ls.count == 0
#     ls.each{|x| sum = sum + x}
#     ls.delete_at(0)
#     a << sum
#     sum = 0
#   end
#     a << 0
#   return a
# end


def parts_sums(ls)
  res = []
  for i in 0...ls.length
    res << ls[i..ls.length].inject(:+)
  end
  res + [0]
end

# 0 1 2 3 4
# 1 2 3 4
# 2 3 4
# 3 4
# 4




# p parts_sums([])
# , [0]
#
p parts_sums([0, 1, 3, 6, 10])
 # [20, 20, 19, 16, 10, 0])
#
# p parts_sums([1, 2, 3, 4, 5, 6])
# , [21, 20, 18, 15, 11, 6, 0]
#
# p parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358])
#
# , [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]
#
