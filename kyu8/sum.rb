# def get_sum(a,b)
# array = []
#   if a == b
#     return a
#   elsif a > b
#     return array[a += 1].sum until a == b
#   elsif
#     return array[a -= 1].sum until a == b
#     end
# end
# def get_sum(a,b)
# arr = []
# i = 0
#     # if a == b
#     #   return a
#     # elsif a < b
#     while i < b do
#         arr << a + i
#        i += 1
#       return arr
#       end
#     # end
#     #   return  a
#     # elsif
#     #   return array[a -= 1].sum until a == b
# end

def get_sum(a,b)
sum = 0
  if a == b
     return a
  elsif a < b
    (a..b).to_a.each do |x|
      sum = sum + x
    end
    return sum
  else
    (b..a).to_a.each do |x|
      sum = sum + x
    end
    return sum
  end
end



p get_sum(8,1)
# ,1
# get_sum(0,-1),-1
# get_sum(1,2),3
# get_sum(5,-1),14
