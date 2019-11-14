# def square_digits num
#   arr = num.to_s.split(//)
#   b = []
#   arr.each do |x|
#     b << x.to_i.**(2).to_s
#   end
#     return b.join.to_i
# end

def square_digits num
  num.to_s.split('').map do |v|
    (v.to_i)**2
  end.join.to_i
end

i = 0
["hello","world"].each do |x|
  i += 1
  puts i
end





p square_digits(3212)
# , 9414
# square_digits(2112), 4114
# square_digits(1111), 1111
# square_digits(1234321), 14916941
# square_digits(0), 0
