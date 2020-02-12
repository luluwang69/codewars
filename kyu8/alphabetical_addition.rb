def add_letters(*letters)
hash ={}

return "z" if letters.count == 0

("a".."z").to_a.each_with_index{|x,i|hash[x]=i+1}
number = letters.map{|e|hash[e]}
if number.sum > 26
  return hash.key (number.sum%(26))
else
  return  hash.key(number.sum)
end
end










# def add_letters(*letters)
# hash = {}
# arr = []
# i = 1
# n = 0
# sum = 0
#
# ("a".."z").to_a.each do |x|
#   hash[x] = i
#   i = i + 1
#   end
#   while n < letters.count
#     arr << hash[letters[n]]
#     n = n + 1
#   end
#   arr.each do |x|
#     sum = sum + x
#   end
#
#   if letters.count == 0
#     return 'z'
#   end
#
#   if sum < 27
#     return hash.key(sum)
#   else
#     until sum < 27 do
#       sum = sum - 26
#     end
#     return hash.key(sum)
#   end
# end

# def add_letters(*letters)
#   return 'z' if letters.count == 0
#
#   hash = {}
#   sum = 0
#
#   ("a".."z").to_a.each_with_index{|x,i| hash[x] = i + 1}
#   letters.each{ |letter| sum = sum + hash[letter] }
#
#   if sum.%(26) == 0
#     return "z"
#   else
#     return hash.key(sum.%(26))
#   end
# end



p add_letters("a", "b", "c")
p add_letters()
p add_letters("a","z")
