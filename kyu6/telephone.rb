def createPhoneNumber(numbers)
numbers.map{|i| i.to_s}.insert(0,"(").insert(4,") ").insert(8,"-").join
end





p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# , "(123) 456-7890"
#   createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), "(111) 111-1111"
#   createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), "(123) 456-7890"
