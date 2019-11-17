def min_value(digits)
return digits.uniq.sort.select{|x| x > 0}.join.to_i
end




p min_value([1, 3, 1])
# , 13
# min_value([4, 7, 5, 7]), 457
# min_value([4, 8, 1, 4]), 148
