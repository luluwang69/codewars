def solution(number)
a =[]
for i in 1 ... number
  if i % 3 == 0 or i % 5 == 0
    a << i
  end
end
return a.inject(0){|sum, x| sum += x}
end





puts solution(10)
# , 23
puts solution(20)
# , 78

puts solution(200)
# , 9168


# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end
