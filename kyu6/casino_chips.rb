# def solve (arr)
#  arr.sort!
#  a = []
#  b = []
#
# # While arr[0] == 0 and arr[1] == 0
# # a
#
#
#
#
#
#
#
#
#    for i in 0..2
#       if i == 0 or i == 2
#         a << arr[i] - 1
#       else
#         a << arr[i]
#       end
#      a.sort!
#     end
#     b << a
#     return b
# end






#   arr.enum_with_index.map do |e, i|
#     if i == 0 or i == 2
#       e - 1
#     else
#       e
#     end
#   end
# end

# def solve (arr)
#   counter = 0
#   while true
#     return counter if arr.length < 2
#     arr.sort!
#     arr[0] = arr[0] - 1
#     arr[-1] = arr[-1] - 1
#     counter = counter + 1
#     arr = arr.select{|x| x != 0}
#   end
# end
#
# p solve([2,6,8])


# def solve (arr)
#   counter = 0
#   while true
#     return counter if arr.length < 2
#     arr.sort!
#     arr[0] = arr[0] - 1
#     arr[-1] = arr[-1] - 1
#     counter = counter + 1
#     arr = arr.select{|x| x != 0}
#   end
# end
#
# p solve([2,6,8])


# def case_1(arr)
#   # [5,8,8] or [6,8,8] or [8,8,8]
#
# end
#
# def case_2(arr)
#   # [1,3,9]
#   return arr[1] + arr[0]
# end


def solve(arr)
  arr.sort!

  # [5,8,8] or [6,8,8] or [8,8,8]
  if arr[1] == arr[2]
    arr[0] = arr[0] - 1 if arr[0].odd?
    return arr[2] + arr[0] / 2
  end

  # [1,3,9]
  if arr[2] >= arr[0] + arr[1]
    return arr[1] + arr[0]
  end

  extras = arr[2] - arr[1]
  arr[0] = arr[0] - extras
  arr[2] = arr[2] - extras

  return solve(arr) + extras
end
