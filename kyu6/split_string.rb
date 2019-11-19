# def solution(str)
#   b = str.split("")
#   n = 0
#   c = []
#
#   p b
#
#   if b.count.even?
#      b.each do |x|
#        p n
#        p b[n]
#        p ""
#       c << b[n].to_s + b[n+1].to_s
#       n = n + 2
#     end
#   else
#     b << "_"
#     b.each do |x|
#      c << b[n].to_s + b[n+1].to_s
#      n = n + 2
#    end
#     end
# c.delete("")
# return c
# end

def solution(str)
  b = str.split("")
  n = 0
  c = []

  p b

  if b.count.even?
    for i in 0..str.length/2
      c << b[i*2].to_s + b[i*2+1].to_s
    end
  else
    b << "_"
    b.each do |x|
     c << b[n].to_s + b[n+1].to_s
     n = n + 2
   end
    end
c.delete("")
return c
end

# def solution(str)
#   str = str + "_" if str.length.odd?
#   return str.scan(/../)
# end

# "abcd".scan(/../)   =>  ["ab","cd"]
# "abcde".scan(/../)   =>  ["ab","cd"]  (No e)

# def solution(str)
#   "#{str}_".scan(/../)
# end

# p solution('abcde')
p solution('abcdef')
