#
# def dirReduc(dir_array)
#   dir_to_num_hash = {"NORTH"=>1, "SOUTH"=>-1, "EAST"=>2, "WEST"=>-2}
#   num_to_dir_hash = {1=>"NORTH", -1=>"SOUTH", 2=>"EAST", -2=>"WEST"}
#
#   a = dir_array.map { |e| dir_to_num_hash[e] }
#
#   while true
#     return a.map { |e| num_to_dir_hash[e] } if a.length <= 1
#
#     for i in 0..a.length - 2
#       if a[i] + a[i+1] == 0
#         a.slice!(i..i+1)
#         break
#       end
#       if i == a.length - 2
#         return a.map { |e| num_to_dir_hash[e] }
#       end
#     end
#
#   end
# end
#
# # p delete([-1,2,1,-1,-2,1])
# a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# p dirReduc(a)


def dirReduc(a)
  for i in 0..a.length - 2
    if [["NORTH","SOUTH"],["EAST","WEST"]].include?([a[i], a[i+1]].sort)
      a.slice!(i..i+1)
      return dirReduc(a)
    end
  end
  return a
end

# p delete([-1,2,1,-1,-2,1])
a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
p dirReduc(a)
# [1]
