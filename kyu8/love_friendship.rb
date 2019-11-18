def words_to_marks(string)
  hash = {}
  ("a".."z").to_a.each_with_index{|x,i| hash[x] = i + 1}
  # return string.split("").inject(0) do |res, ele|
  #   res + hash[ele]
  # end
  values = string.split("").map{|x| hash[x]}
  res = 0
  values.each do |x|
    res = res + x
  end
  return res
end
#
#
 p words_to_marks("attitude")
#
# p [1,2,3,4].inject(0) do |res, ele|
#   res + ele
# end


# return of the first iteration is 1

# 1 is now the return value of the previous iteration, which means it is now "res"

# return of the 2nd iteration is 3

# 3 is now res for next iteration

# return of the inject method is the last return 10.
